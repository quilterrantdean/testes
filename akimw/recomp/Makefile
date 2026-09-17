# Use MinGW-w64 em modo 32-bit: API Win32 disponível no Windows XP.
CC ?= i686-w64-mingw32-gcc
# O Python do w64devkit chama-se normalmente «python», não «python3».
PYTHON ?= python
CFLAGS = -std=c89 -pedantic -Wall -Wextra -Werror -Os -Isrc
LDFLAGS = -mwindows -lopengl32 -lgdi32
TARGET = akimw_recomp.exe
SOURCES = src/win32_main.c src/recomp.c src/vdp.c generated/game_rom.c

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $(SOURCES) $(LDFLAGS)

transpile:
	$(PYTHON) tools/transpile.py

test:
	$(CC) $(CFLAGS) -o vdp_test tests/vdp_test.c src/vdp.c
	./vdp_test

clean:
	rm -f $(TARGET) vdp_test vdp_test.exe

.PHONY: all clean test transpile
