# To use this Makefile on ELKS, add the toolchain binaries to PATH

TOPDIR=/root/elks

C86LIB=/root/libc

CPP=cpp86
CC=c86
AS=nasm
LD=ld86

INCLUDES=-I$(TOPDIR)/libc/include -I$(TOPDIR)/elks/include -I$(C86LIB)/include
DEFINES=-D__C86__ -D__STDC__

CPPFLAGS=$(INCLUDES) $(DEFINES)
CFLAGS=-O -warn=4 -lang=c99 -align=yes -stackopt=minimum -peep=all -stackcheck=no
ASFLAGS=-f as86
LDFLAGS=-0 -i -L$(C86LIB)


all: test chess

test: test.o cprintf.o
	$(LD) $(LDFLAGS) test.o cprintf.o -lc86 -o test

test.o: test.asm
	$(AS) $(ASFLAGS) test.asm -o test.o

test.asm: test.i
	$(CC) $(CFLAGS) test.i test.asm

test.i: test.c cprintf.h
	$(CPP) $(CPPFLAGS) test.c -o test.i

chess: chess.o cprintf.o
	$(LD) $(LDFLAGS) chess.o cprintf.o -lc86 -o chess

chess.o: chess.asm
	$(AS) $(ASFLAGS)  chess.asm -o chess.o

chess.asm: chess.i
	$(CC) $(CFLAGS) chess.i chess.asm

chess.i: chess.c cprintf.h
	$(CPP) $(CPPFLAGS) chess.c -o chess.i

cprintf.o: cprintf.asm
	$(AS) $(ASFLAGS) cprintf.asm -o cprintf.o

cprintf.asm: cprintf.i
	$(CC) $(CFLAGS) cprintf.i cprintf.asm

cprintf.i: cprintf.c cprintf.h
	$(CPP) $(CPPFLAGS) cprintf.c -o cprintf.i


clean:
	rm -f *.o *.a *.i *.asm  test chess

# end
