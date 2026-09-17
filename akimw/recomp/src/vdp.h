#ifndef VDP_H
#define VDP_H

#include <stdint.h>

#define VDP_WIDTH 256
#define VDP_HEIGHT 192

typedef struct RecompVdp {
    uint8_t vram[16384];
    uint8_t cram[32];
    uint8_t reg[16];
    uint16_t address;
    uint8_t code;
    uint8_t control_first;
    int control_pending;
    uint8_t status;
} RecompVdp;

void vdp_reset(RecompVdp *vdp);
void vdp_write_control(RecompVdp *vdp, uint8_t value);
void vdp_write_data(RecompVdp *vdp, uint8_t value);
uint8_t vdp_read_control(RecompVdp *vdp);
uint8_t vdp_read_data(RecompVdp *vdp);
void vdp_render(const RecompVdp *vdp, uint8_t *rgb);

#endif
