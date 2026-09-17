# Recompilação estática inicial para Windows XP

Este directório inicia a porta do `game.sms` no modelo dos projectos de
*recomp*: a ROM não é lida em execução. `tools/transpile.py` recolhe os bytes
originais presentes nos comentários do `z80dasm` e gera `generated/game_rom.c`,
uma imagem `const` de 128 KiB incorporada no executável. O núcleo C mantém
explicitamente RAM, registos e os três selectores do mapeador Sega.

## Alvo actual

- Win32 de 32 bits compatível com Windows XP;
- C89, sem dependências de tempo de execução para além de Win32 e OpenGL;
- VDP Mode 4 inicial: VRAM, CRAM, registos, portos de dados/controlo e fundo em tiles;
- framebuffer RGB de software com 256×192 pixels;
- apresentação através de `glDrawPixels`, funcional em OpenGL 1.1 e sem
  shaders, VBOs ou extensões modernas.

O descodificador em `src/recomp.c` é deliberadamente uma primeira fronteira de
recompilação: contém o percurso de arranque e pára deterministamente em opcodes
ainda não traduzidos. A interface VDP já é encaminhada para `src/vdp.c`, mas os
opcodes `IN`/`OUT` ainda terão de ser traduzidos antes de o jogo lhe poder escrever. Assim, o executável comprova a cadeia ROM estática →
mapeamento → anfitrião XP, sem afirmar falsamente que o jogo já é jogável.
Os próximos passos são gerar blocos C por endereço, completar os opcodes Z80,
e traduzir VDP/PSG e entrada para o framebuffer.

## Construção

É necessário um MinGW de 32 bits e Python. No w64devkit, use o comando
`python` (não `python3`):

```sh
cd akimw
make transpile  # só necessário depois de alterar bank*.asm
make
make test
```

Também pode executar `make -C recomp` se já estiver no directório `akimw`.

O ficheiro gerado faz parte do repositório para permitir uma compilação sem
Python. Para verificar que continua sincronizado, execute o transpiler e
confirme que `git diff --exit-code generated/game_rom.c` não produz diferenças.
