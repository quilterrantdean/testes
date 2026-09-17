# Desmontagem de `game.sms`

## Dados confirmados (lidos directamente do ficheiro)

- Tamanho: 131072 bytes (128 KB) → 8 bancos de 16 KB (mapeador Sega standard)
- Cabeçalho `TMR SEGA` presente e válido no offset `0x7FF0`
- Checksum declarado no cabeçalho: `0x896E`
- Checksum recalculado (soma de 16 bits de todos os bytes, excluindo os 16 bytes do próprio cabeçalho): `0x896E` → **coincide**, ou seja o ficheiro não está corrompido nem foi alterado de forma a invalidar o checksum original
- Byte de região/tamanho (`0x7FFF` = `4F`): nibble alto `4` = SMS Export, nibble baixo `F` = 128 KB → coerente com o tamanho real do ficheiro
- Bytes do código de produto (`0x7FFC`-`0x7FFE`) = `FF FF FF`: todos os bits a 1, o que tipicamente indica que o código de produto **não foi definido** (valor "em branco"), e não um código de produto real
- Vector de reset (`0x0000`): `F3 ED 56 C3 96 7D` = `DI` / `IM 1` / `JP 07D96h` → o código "real" do jogo começa em `07D96h`, dentro do banco 1
- Vector de NMI (`0x0066`) contém uma rotina válida (uso típico: botão *Pause* da consola)

## O que foi feito

Usei o `z80dasm` (desmontador Z80 open-source) para desmontar cada um dos 8 bancos de 16 KB separadamente, com endereço de origem ajustado ao mapa de memória do Z80 conforme o mapeador Sega standard:

| Ficheiro | Offset no ROM | Origem assumida | Motivo |
|---|---|---|---|
| `bank0.asm` | `0x0000-0x3FFF` | `0000h` | Slot 0, fixo |
| `bank1.asm` | `0x4000-0x7FFF` | `4000h` | Slot 1, valor inicial (contém o cabeçalho) |
| `bank2.asm` | `0x8000-0xBFFF` | `8000h` | Slot 2, valor inicial |
| `bank3.asm`…`bank7.asm` | `0xC000-0x1FFFF` | `8000h` | **Assumido**: bancos extra, paginados para o slot 2 via porta `0xFFFF` quando necessário |

Opções usadas: `-a` (endereço em comentário), `-t` (bytes originais em hex+ASCII), `-l` (labels automáticos para saltos/chamadas).

## Limitações e avisos (importante)

- A desmontagem é **linear e por banco isolado** — não segue o fluxo de execução real nem sabe distinguir código de dados. Zonas de gráficos, tilemaps, tabelas ou música vão aparecer desmontadas como se fossem instruções Z80, sem sentido.
- O `z80dasm` assinalou "*Self-modifying code detected*" em todos os bancos — isto é uma heurística da ferramenta (detecta escrita em endereços que também foram desmontados como código), não uma confirmação absoluta; é comum em jogos SMS por causa da mistura código/dados mencionada acima.
- Os endereços absolutos usados em `JP`/`CALL` dentro dos bancos 3 a 7 só correspondem à realidade **se** esse banco estiver de facto paginado no slot 2 (`0x8000-0xBFFF`) nesse momento da execução. Não confirmei isto por trace de execução — é a convenção mais comum, mas alguns jogos também paginam bancos extra no slot 1.
- Ainda não identifiquei qual é este jogo (código de produto em branco) — se quiseres, calculo o checksum e comparo com bases de dados públicas tipo No-Intro/SMS Power para tentar identificá-lo.
