##
# Look https://github.com/ghaerr/elks/blob/master/elks/tools/bin/ecc
# for a compiler driver which greatly simplifies things

ifndef TOPDIR
$(error ELKS TOPDIR is not defined)
endif

C86LIB=../libc

INCLUDES=-I$(TOPDIR)/libc/include -I$(TOPDIR)/elks/include -I$(C86LIB)/include
DEFINES=
#DEFINES+=-DNANOPRINTF_IMPLEMENTATION -DNANOPRINTF_USE_FIELD_WIDTH_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_PRECISION_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_FLOAT_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_LARGE_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_BINARY_FORMAT_SPECIFIERS=0 -DNANOPRINTF_USE_WRITEBACK_FORMAT_SPECIFIERS=0

CPPFLAGS=-0 $(INCLUDES) $(DEFINES)
#CFLAGS=-O -bnasm86 -separate=yes -warn=4 -lang=c99 -align=yes -stackopt=minimum -peep=all -stackcheck=no
CFLAGS=-g -O -bas86 -separate=yes -warn=4 -lang=c99 -align=yes -stackopt=minimum -peep=all -stackcheck=no
NASMFLAGS=-f as86
ASFLAGS=-0 -O -j -w-
LDFLAGS=-0 -i -L$(C86LIB)

CPP=../host-bin/cpp86
CC=../host-bin/c86
NASM=../host-bin/nasm86
AS=../host-bin/as86
LD=../host-bin/ld86


all: test chess show_fonts

show_fonts: show_fonts.o
	$(LD) $(LDFLAGS) show_fonts.o -o show_fonts

show_fonts.o: show_fonts.asm
	$(NASM) $(NASMFLAGS) show_fonts.asm -o show_fonts.o

test: test.o cprintf.o
	$(LD) $(LDFLAGS) test.o cprintf.o -lc86 -o test

test.o: test.asm
	$(AS) $(ASFLAGS) -l test.lst test.asm -o test.o

test.asm: test.i
	$(CC) $(CFLAGS) test.i test.asm

test.i: test.c cprintf.h
	$(CPP) $(CPPFLAGS) test.c -o test.i

chess: chess.o cprintf.o
	$(LD) $(LDFLAGS) chess.o cprintf.o -lc86 -o chess

chess.o: chess.asm
	$(AS) $(ASFLAGS) -l chess.lst chess.asm -o chess.o

chess.asm: chess.i
	$(CC) $(CFLAGS) chess.i chess.asm

chess.i: chess.c cprintf.h
	$(CPP) $(CPPFLAGS) chess.c -o chess.i

cprintf.o: cprintf.asm
	$(AS) $(ASFLAGS) -l cprintf.lst cprintf.asm -o cprintf.o

cprintf.asm: cprintf.i
	$(CC) $(CFLAGS) cprintf.i cprintf.asm

cprintf.i: cprintf.c cprintf.h
	$(CPP) $(CPPFLAGS) cprintf.c -o cprintf.i


clean:
	rm -f *.o *.a *.i *.lst chess.asm cprintf.asm test.asm test chess show_fonts

# end
