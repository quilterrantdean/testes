#include "recomp.h"
#include <string.h>

static uint8_t rom_byte(uint8_t bank, uint16_t offset) {
    return recomp_rom[((unsigned int)(bank & 7u) * 0x4000u) + offset];
}

void recomp_reset(RecompMachine *machine) {
    memset(machine, 0, sizeof(*machine));
    machine->mapper_slot0 = 0;
    machine->mapper_slot1 = 1;
    machine->mapper_slot2 = 2;
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

/* Ponte de arranque: mantém o estado e mapeamento explicitamente em C.
 * Esta é a fronteira prevista para o código por-bloco gerado pelo transpiler. */
void recomp_run_slice(RecompMachine *machine, unsigned int instruction_budget) {
    while (instruction_budget-- != 0u && !machine->halted) {
        uint8_t opcode = recomp_read8(machine, machine->pc++);
        switch (opcode) {
        case 0x00: break;                         /* NOP */
        case 0xF3: break;                         /* DI; interrupções do anfitrião ainda não ligadas */
        case 0x31:                                /* LD SP,nn */
            machine->sp = recomp_read8(machine, machine->pc);
            machine->pc++;
            machine->sp |= (uint16_t)recomp_read8(machine, machine->pc++) << 8;
            break;
        case 0x3E: machine->a = recomp_read8(machine, machine->pc++); break;
        case 0x32: {                              /* LD (nn),A */
            uint16_t address = recomp_read8(machine, machine->pc++);
            address |= (uint16_t)recomp_read8(machine, machine->pc++) << 8;
            recomp_write8(machine, address, machine->a);
            break;
        }
        case 0xC3:                                /* JP nn */
        {   uint16_t address = recomp_read8(machine, machine->pc++);
            address |= (uint16_t)recomp_read8(machine, machine->pc++) << 8;
            machine->pc = address;
            break;
        }
        case 0x76: machine->halted = 1; break;
        default:
            /* Falhar de modo determinista até o gerador emitir este bloco. */
            machine->halted = 1;
            break;
        }
    }
}
