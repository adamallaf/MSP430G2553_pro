CC = msp430-gcc

MCU = msp430g2553

DEBUG = -g

OPT = -O2

CFLAGS = $(OPT) -Wall $(DEBUG) -mmcu=$(MCU)
ASM = -D_GNU_ASSEMBLER_

BIN = $(MCU)_out.elf
OBJS = main.o

TARGET = msp430-project

all: $(TARGET)
# asm: msp430-asm

msp430-project: $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS)
	$(CC) $(CFLAGS) -S main.c

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	$(RM) $(BIN) $(OBJS)
