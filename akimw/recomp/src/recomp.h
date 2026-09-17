#ifndef RECOMP_H
#define RECOMP_H

#include <stddef.h>
#include <stdint.h>

#define RECOMP_ROM_SIZE 131072u
#define RECOMP_RAM_SIZE 8192u

typedef struct RecompMachine {
    uint8_t ram[RECOMP_RAM_SIZE];
    uint8_t mapper_slot0;
    uint8_t mapper_slot1;
    uint8_t mapper_slot2;
    uint16_t pc;
    uint16_t sp;
    uint8_t a, f, b, c, d, e, h, l;
    int halted;
} RecompMachine;

void recomp_reset(RecompMachine *machine);
uint8_t recomp_read8(const RecompMachine *machine, uint16_t address);
void recomp_write8(RecompMachine *machine, uint16_t address, uint8_t value);
/* Executa uma parcela curta. A tradução de cada opcode será acrescentada aqui. */
void recomp_run_slice(RecompMachine *machine, unsigned int instruction_budget);

extern const uint8_t recomp_rom[RECOMP_ROM_SIZE];
extern const size_t recomp_rom_size;

#endif
