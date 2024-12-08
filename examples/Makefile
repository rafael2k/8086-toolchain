##
# Look https://github.com/ghaerr/elks/blob/master/elks/tools/bin/ecc
# for a compiler driver which greatly simplifies things

ifndef TOPDIR
$(error ELKS TOPDIR is not defined)
endif

C86LIB=../libc

INCLUDES=-I$(TOPDIR)/libc/include -I$(TOPDIR)/elks/include -I$(C86LIB)/include
DEFINES=-D__C86__ -D__STDC__ -DNANOPRINTF_IMPLEMENTATION -DNANOPRINTF_USE_FIELD_WIDTH_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_PRECISION_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_FLOAT_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_LARGE_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_BINARY_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_WRITEBACK_FORMAT_SPECIFIERS=0

CPPFLAGS=$(INCLUDES) $(DEFINES)
CFLAGS=-O -warn=4 -lang=c99 -align=yes -stackopt=minimum -peep=all -stackcheck=no
ASFLAGS=-f as86
LDFLAGS=-0 -i -L$(C86LIB)

CPP=../host-bin/cpp86
CC=../host-bin/c86
AS=../host-bin/nasm
LD=../host-bin/ld86


all: test chess


all: test

test: test.o
	$(LD) $(LDFLAGS) test.o -lc86 -o test

test.o: test.asm
	$(AS) $(ASFLAGS)  test.asm -o test.o

test.asm: test.i
	$(CC) $(CFLAGS) test.i test.asm

test.i: test.c nanoprintf.h
	$(CPP) $(CPPFLAGS) test.c -o test.i

chess: chess.o
	$(LD) $(LDFLAGS) chess.o -lc86 -o chess

chess.o: chess.asm
	$(AS) $(ASFLAGS)  chess.asm -o chess.o

chess.asm: chess.i
	$(CC) $(CFLAGS) chess.i chess.asm

chess.i: chess.c nanoprintf.h
	$(CPP) $(CPPFLAGS) chess.c -o chess.i


clean:
	rm -f *.o *.a *.i *.asm

# end
