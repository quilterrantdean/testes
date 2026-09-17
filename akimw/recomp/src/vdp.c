#include "vdp.h"
#include <string.h>

void vdp_reset(RecompVdp *vdp) { memset(vdp, 0, sizeof(*vdp)); }

void vdp_write_control(RecompVdp *vdp, uint8_t value) {
    if (!vdp->control_pending) { vdp->control_first = value; vdp->control_pending = 1; return; }
    vdp->control_pending = 0;
    if ((value & 0xf0u) == 0x80u) { vdp->reg[value & 0x0fu] = vdp->control_first; return; }
    vdp->address = (uint16_t)vdp->control_first | ((uint16_t)(value & 0x3fu) << 8);
    vdp->code = value >> 6;
}

void vdp_write_data(RecompVdp *vdp, uint8_t value) {
    if (vdp->code == 3u) vdp->cram[vdp->address & 0x1fu] = value;
    else vdp->vram[vdp->address & 0x3fffu] = value;
    vdp->address = (uint16_t)((vdp->address + 1u) & 0x3fffu);
    vdp->control_pending = 0;
}

uint8_t vdp_read_control(RecompVdp *vdp) {
    uint8_t result = vdp->status;
    vdp->status = 0; vdp->control_pending = 0;
    return result;
}

uint8_t vdp_read_data(RecompVdp *vdp) {
    uint8_t result = vdp->vram[vdp->address & 0x3fffu];
    vdp->address = (uint16_t)((vdp->address + 1u) & 0x3fffu);
    vdp->control_pending = 0;
    return result;
}

static void colour(uint8_t value, uint8_t *out) {
    out[0] = (uint8_t)((value & 3u) * 85u);
    out[1] = (uint8_t)(((value >> 2) & 3u) * 85u);
    out[2] = (uint8_t)(((value >> 4) & 3u) * 85u);
}

void vdp_render(const RecompVdp *vdp, uint8_t *rgb) {
    unsigned int x, y;
    unsigned int name_base = ((unsigned int)vdp->reg[2] & 0x0eu) << 10;
    unsigned int pattern_base = ((unsigned int)vdp->reg[4] & 7u) << 11;
    for (y = 0; y < VDP_HEIGHT; ++y) for (x = 0; x < VDP_WIDTH; ++x) {
        unsigned int cell = (y >> 3) * 32u + (x >> 3);
        uint16_t entry = (uint16_t)vdp->vram[(name_base + cell * 2u) & 0x3fffu]
            | ((uint16_t)vdp->vram[(name_base + cell * 2u + 1u) & 0x3fffu] << 8);
        unsigned int row = y & 7u;
        unsigned int pattern = pattern_base + ((unsigned int)(entry & 0x1ffu) * 32u) + row * 4u;
        unsigned int bit = 7u - (x & 7u);
        uint8_t index = (uint8_t)(((vdp->vram[(pattern + 0u) & 0x3fffu] >> bit) & 1u)
            | (((vdp->vram[(pattern + 1u) & 0x3fffu] >> bit) & 1u) << 1)
            | (((vdp->vram[(pattern + 2u) & 0x3fffu] >> bit) & 1u) << 2)
            | (((vdp->vram[(pattern + 3u) & 0x3fffu] >> bit) & 1u) << 3));
        colour(vdp->cram[index], rgb + (y * VDP_WIDTH + x) * 3u);
    }
}
