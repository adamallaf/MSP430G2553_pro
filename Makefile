# update:   17.05.2016
# Author:   Adam Allaf
#

CC = msp430-gcc
DEBUG = mspdebug

MCU = msp430g2553

#DEBUGINFO = -g
#ASM = -D_GNU_ASSEMBLER_

OPT = -O2


CFLAGS = $(OPT) $(ASM) -Wall $(DEBUGINFO) -mmcu=$(MCU)

BIN = $(MCU)_out.elf
OBJS = main.o port1_isr.o

TARGET = msp430-project

all: $(TARGET)

msp430-project: $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS)

%.o: %.s
	$(CC) $(CFLAGS) -c $<

install: $(TARGET)
	$(DEBUG) rf2500 "prog $(BIN)"

clean:
	$(RM) $(BIN) $(OBJS)
