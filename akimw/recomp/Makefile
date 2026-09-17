# Use MinGW-w64 em modo 32-bit: API Win32 disponível no Windows XP.
CC ?= i686-w64-mingw32-gcc
CFLAGS = -std=c89 -pedantic -Wall -Wextra -Werror -Os -Isrc
LDFLAGS = -mwindows -lopengl32 -lgdi32
TARGET = akimw_recomp.exe
SOURCES = src/win32_main.c src/recomp.c generated/game_rom.c

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $(SOURCES) $(LDFLAGS)

transpile:
	python3 tools/transpile.py

clean:
	rm -f $(TARGET)

.PHONY: all clean transpile
