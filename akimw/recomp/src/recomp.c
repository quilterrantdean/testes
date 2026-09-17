#include "recomp.h"
#include <string.h>

static uint8_t rom_byte(uint8_t bank, uint16_t offset) {
    return recomp_rom[((unsigned int)(bank & 7u) * 0x4000u) + offset];
}


static uint16_t read16(const RecompMachine *machine, uint16_t address) {
    uint16_t value = recomp_read8(machine, address);
    return (uint16_t)(value | ((uint16_t)recomp_read8(machine, (uint16_t)(address + 1u)) << 8));
}

static uint16_t get_hl(const RecompMachine *machine) {
    return (uint16_t)(((uint16_t)machine->h << 8) | machine->l);
}

static void set_hl(RecompMachine *machine, uint16_t value) {
    machine->h = (uint8_t)(value >> 8); machine->l = (uint8_t)value;
}

static uint16_t get_bc(const RecompMachine *machine) {
    return (uint16_t)(((uint16_t)machine->b << 8) | machine->c);
}

static void set_bc(RecompMachine *machine, uint16_t value) {
    machine->b = (uint8_t)(value >> 8); machine->c = (uint8_t)value;
}

static void set_z(RecompMachine *machine, uint8_t value) {
    machine->f = (uint8_t)((machine->f & 1u) | (value == 0u ? 0x40u : 0u));
}

static void swap8(uint8_t *left, uint8_t *right) {
    uint8_t value = *left; *left = *right; *right = value;
}

static void exx(RecompMachine *machine) {
    swap8(&machine->b, &machine->b_alt); swap8(&machine->c, &machine->c_alt);
    swap8(&machine->d, &machine->d_alt); swap8(&machine->e, &machine->e_alt);
    swap8(&machine->h, &machine->h_alt); swap8(&machine->l, &machine->l_alt);
}

static void push16(RecompMachine *machine, uint16_t value) {
    recomp_write8(machine, (uint16_t)--machine->sp, (uint8_t)(value >> 8));
    recomp_write8(machine, (uint16_t)--machine->sp, (uint8_t)value);
}

static uint16_t pop16(RecompMachine *machine) {
    uint16_t value = recomp_read8(machine, machine->sp++);
    return (uint16_t)(value | ((uint16_t)recomp_read8(machine, machine->sp++) << 8));
}

void recomp_reset(RecompMachine *machine) {
    memset(machine, 0, sizeof(*machine));
    machine->mapper_slot0 = 0;
    machine->mapper_slot1 = 1;
    machine->mapper_slot2 = 2;
    vdp_reset(&machine->vdp);
    machine->pc = 0;
    machine->sp = 0xdff0;
}

uint8_t recomp_read8(const RecompMachine *machine, uint16_t address) {
    if (address < 0x4000u) return rom_byte(machine->mapper_slot0, address);
    if (address < 0x8000u) return rom_byte(machine->mapper_slot1, address - 0x4000u);
    if (address < 0xc000u) return rom_byte(machine->mapper_slot2, address - 0x8000u);
    return machine->ram[address & 0x1fffu];
}

void recomp_write8(RecompMachine *machine, uint16_t address, uint8_t value) {
    if (address == 0xfffdu) machine->mapper_slot0 = value;
    else if (address == 0xfffeu) machine->mapper_slot1 = value;
    else if (address == 0xffffu) machine->mapper_slot2 = value;
    else if (address >= 0xc000u) machine->ram[address & 0x1fffu] = value;
}

uint8_t recomp_in8(RecompMachine *machine, uint8_t port) {
    if (port == 0xbeu) return vdp_read_data(&machine->vdp);
    if (port == 0xbfu) return vdp_read_control(&machine->vdp);
    return 0xffu;
}

void recomp_out8(RecompMachine *machine, uint8_t port, uint8_t value) {
    if (port == 0xbeu) vdp_write_data(&machine->vdp, value);
    else if (port == 0xbfu) vdp_write_control(&machine->vdp, value);
}

/* Ponte de arranque: mantém o estado e mapeamento explicitamente em C.
 * Esta é a fronteira prevista para o código por-bloco gerado pelo transpiler. */
void recomp_run_slice(RecompMachine *machine, unsigned int instruction_budget) {
    while (instruction_budget-- != 0u && !machine->halted) {
        uint8_t opcode = recomp_read8(machine, machine->pc++);
        switch (opcode) {
        case 0x00: break;                         /* NOP */
        case 0xF3: break;                         /* DI */
        case 0xFB: break;                         /* EI; interrupções serão ligadas ao VDP */
        case 0x31: machine->sp = read16(machine, machine->pc); machine->pc += 2; break;
        case 0x06: machine->b = recomp_read8(machine, machine->pc++); break;
        case 0x0E: machine->c = recomp_read8(machine, machine->pc++); break;
        case 0x01: machine->c = recomp_read8(machine, machine->pc++); machine->b = recomp_read8(machine, machine->pc++); break;
        case 0x11: machine->e = recomp_read8(machine, machine->pc++); machine->d = recomp_read8(machine, machine->pc++); break;
        case 0x21: set_hl(machine, read16(machine, machine->pc)); machine->pc += 2; break;
        case 0x2E: machine->l = recomp_read8(machine, machine->pc++); break;
        case 0x16: machine->d = recomp_read8(machine, machine->pc++); break;
        case 0x1A: machine->a = recomp_read8(machine, (uint16_t)(((uint16_t)machine->d << 8) | machine->e)); break;
        case 0x3E: machine->a = recomp_read8(machine, machine->pc++); break;
        case 0x54: machine->d = machine->h; break;
        case 0x67: machine->h = machine->a; break;
        case 0x7A: machine->a = machine->d; break;
        case 0x7B: machine->a = machine->e; break;
        case 0x7D: machine->a = machine->l; break;
        case 0x7E: machine->a = recomp_read8(machine, get_hl(machine)); break;
        case 0x77: recomp_write8(machine, get_hl(machine), machine->a); break;
        case 0x78: machine->a = machine->b; break;
        case 0x79: machine->a = machine->c; break;
        case 0xB0: machine->a |= machine->b; set_z(machine, machine->a); break;
        case 0xB1: machine->a |= machine->c; set_z(machine, machine->a); break;
        case 0xB7: set_z(machine, machine->a); break;
        case 0xBE: set_z(machine, (uint8_t)(machine->a - recomp_read8(machine, get_hl(machine)))); break;
        case 0x13: machine->e = (uint8_t)(machine->e + 1u); if (machine->e == 0u) machine->d++; break;
        case 0x41: machine->b = machine->c; break;
        case 0x47: machine->b = machine->a; break;
        case 0x4F: machine->c = machine->a; break;
        case 0x2C: machine->l++; set_z(machine, machine->l); break;
        case 0x0B: set_bc(machine, (uint16_t)(get_bc(machine) - 1u)); break;
        case 0x0D: machine->c--; set_z(machine, machine->c); break;
        case 0x10: { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); machine->b--; if (machine->b != 0u) machine->pc = (uint16_t)(machine->pc + displacement); break; }
        case 0x18: { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); machine->pc = (uint16_t)(machine->pc + displacement); break; }
        case 0x28: { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); if (machine->f & 0x40u) machine->pc = (uint16_t)(machine->pc + displacement); break; }
        case 0x20: { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); if ((machine->f & 0x40u) == 0u) machine->pc = (uint16_t)(machine->pc + displacement); break; }
        case 0x38: { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); if (machine->f & 1u) machine->pc = (uint16_t)(machine->pc + displacement); break; }
        case 0x1F: { uint8_t carry = (uint8_t)(machine->a & 1u); machine->a = (uint8_t)((machine->a >> 1) | ((machine->f & 1u) ? 0x80u : 0u)); machine->f = (uint8_t)((machine->f & ~1u) | carry); break; }
        case 0x09: set_hl(machine, (uint16_t)(get_hl(machine) + get_bc(machine))); break;
        case 0x23: set_hl(machine, (uint16_t)(get_hl(machine) + 1u)); break;
        case 0x36: recomp_write8(machine, get_hl(machine), recomp_read8(machine, machine->pc++)); break;
        case 0x32: recomp_write8(machine, read16(machine, machine->pc), machine->a); machine->pc += 2; break;
        case 0x3A: machine->a = recomp_read8(machine, read16(machine, machine->pc)); machine->pc += 2; break;
        case 0x22: { uint16_t address = read16(machine, machine->pc); machine->pc += 2; recomp_write8(machine, address, machine->l); recomp_write8(machine, (uint16_t)(address + 1u), machine->h); break; }
        case 0x2A: set_hl(machine, read16(machine, read16(machine, machine->pc))); machine->pc += 2; break;
        case 0xD3: recomp_out8(machine, recomp_read8(machine, machine->pc++), machine->a); break;
        case 0xDB: machine->a = recomp_in8(machine, recomp_read8(machine, machine->pc++)); break;
        case 0xD9: exx(machine); break;            /* EXX */
        case 0x08: swap8(&machine->a, &machine->a_alt); swap8(&machine->f, &machine->f_alt); break;
        case 0xE6: machine->a &= recomp_read8(machine, machine->pc++); set_z(machine, machine->a); break;
        case 0xFE: set_z(machine, (uint8_t)(machine->a - recomp_read8(machine, machine->pc++))); break;
        case 0xAF: machine->a = 0; machine->f = 0x40; break;
        case 0xC2: { uint16_t address = read16(machine, machine->pc); machine->pc += 2; if ((machine->f & 0x40u) == 0u) machine->pc = address; break; }
        case 0xCA: { uint16_t address = read16(machine, machine->pc); machine->pc += 2; if (machine->f & 0x40u) machine->pc = address; break; }
        case 0xC3: machine->pc = read16(machine, machine->pc); break;
        case 0xCF: push16(machine, machine->pc); machine->pc = 0x0008u; break;
        case 0xC5: push16(machine, get_bc(machine)); break;
        case 0xD5: push16(machine, (uint16_t)(((uint16_t)machine->d << 8) | machine->e)); break;
        case 0xD1: { uint16_t value = pop16(machine); machine->d = (uint8_t)(value >> 8); machine->e = (uint8_t)value; break; }
        case 0xC1: set_bc(machine, pop16(machine)); break;
        case 0xCD: { uint16_t address = read16(machine, machine->pc); machine->pc += 2; push16(machine, machine->pc); machine->pc = address; break; }
        case 0xC0: if ((machine->f & 0x40u) == 0u) machine->pc = pop16(machine); break;
        case 0xC8: if (machine->f & 0x40u) machine->pc = pop16(machine); break;
        case 0xC9: machine->pc = pop16(machine); break;
        case 0xEB: { uint16_t value = get_hl(machine); set_hl(machine, (uint16_t)(((uint16_t)machine->d << 8) | machine->e)); machine->d = (uint8_t)(value >> 8); machine->e = (uint8_t)value; break; }
        case 0xF5: push16(machine, (uint16_t)(((uint16_t)machine->a << 8) | machine->f)); break;
        case 0xF1: { uint16_t value = pop16(machine); machine->a = (uint8_t)(value >> 8); machine->f = (uint8_t)value; break; }
        case 0xE5: push16(machine, get_hl(machine)); break;
        case 0xE1: set_hl(machine, pop16(machine)); break;
        case 0xCB: {
            uint8_t bitop = recomp_read8(machine, machine->pc++);
            uint8_t bit = (uint8_t)((bitop >> 3) & 7u);
            uint8_t *reg = bitop == 0x79u ? &machine->c : (bitop == 0xb8u ? &machine->b : NULL);
            if (bitop == 0x7eu) { set_z(machine, (uint8_t)(recomp_read8(machine, get_hl(machine)) & 0x80u)); break; }
            if (bitop == 0x79u) { set_z(machine, (uint8_t)(machine->c & 0x80u)); break; }
            if (reg != NULL && (bitop & 0xc0u) == 0x80u) { *reg = (uint8_t)(*reg & ~(1u << bit)); break; }
            machine->halted = 1; break;
        }
        case 0xDD:
        case 0xFD: {
            uint16_t *index = opcode == 0xddu ? &machine->ix : &machine->iy;
            uint8_t indexed = recomp_read8(machine, machine->pc++);
            if (indexed == 0x21u) { *index = read16(machine, machine->pc); machine->pc += 2; break; }
            if (indexed == 0xe5u) { push16(machine, *index); break; }
            if (indexed == 0xe1u) { *index = pop16(machine); break; }
            if (indexed == 0x36u) { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); recomp_write8(machine, (uint16_t)(*index + displacement), recomp_read8(machine, machine->pc++)); break; }
            if (indexed == 0x7eu) { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); machine->a = recomp_read8(machine, (uint16_t)(*index + displacement)); break; }
            if (indexed == 0x77u) { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); recomp_write8(machine, (uint16_t)(*index + displacement), machine->a); break; }
            if (indexed == 0x86u) { int8_t displacement = (int8_t)recomp_read8(machine, machine->pc++); machine->a = (uint8_t)(machine->a + recomp_read8(machine, (uint16_t)(*index + displacement))); set_z(machine, machine->a); break; }
            machine->halted = 1; break;
        }
        case 0xED: {
            uint8_t extended = recomp_read8(machine, machine->pc++);
            if (extended == 0x56u) break;          /* IM 1 */
            if (extended == 0xa3u) {               /* OUTI */
                recomp_out8(machine, machine->c, recomp_read8(machine, get_hl(machine)));
                set_hl(machine, (uint16_t)(get_hl(machine) + 1u)); machine->b--; break;
            }
            if (extended == 0x79u) { recomp_out8(machine, machine->c, machine->a); break; }
            if (extended == 0x51u) { recomp_out8(machine, machine->c, machine->d); break; }
            if (extended == 0xb3u) {               /* OTIR */
                while (machine->b != 0u) { recomp_out8(machine, machine->c, recomp_read8(machine, get_hl(machine))); set_hl(machine, (uint16_t)(get_hl(machine) + 1u)); machine->b--; }
                break;
            }
            if (extended == 0xb0u) {               /* LDIR */
                uint16_t count = (uint16_t)(((uint16_t)machine->b << 8) | machine->c);
                while (count-- != 0u) { recomp_write8(machine, (uint16_t)(((uint16_t)machine->d << 8) | machine->e), recomp_read8(machine, get_hl(machine))); set_hl(machine, (uint16_t)(get_hl(machine) + 1u)); machine->e++; if (machine->e == 0) machine->d++; }
                machine->b = machine->c = 0; break;
            }
            machine->halted = 1; break;
        }
        case 0x76: machine->halted = 1; break;
        default:
            /* Falhar de modo determinista até o gerador emitir este bloco. */
            machine->halted = 1;
            break;
        }
    }
}
