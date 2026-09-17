#include <assert.h>
#include <string.h>
#include "vdp.h"
int main(void) {
    RecompVdp v; unsigned char pixels[VDP_WIDTH * VDP_HEIGHT * 3];
    vdp_reset(&v); vdp_write_control(&v, 0); vdp_write_control(&v, 0x40);
    vdp_write_data(&v, 0x80); vdp_write_control(&v, 0); vdp_write_control(&v, 0xc0);
    vdp_write_data(&v, 3); vdp_render(&v, pixels);
    assert(pixels[0] == 255 && pixels[1] == 0 && pixels[2] == 0);
    return 0;
}
