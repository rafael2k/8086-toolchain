##
# Look https://github.com/ghaerr/elks/blob/master/elks/tools/bin/ecc
# for a compiler driver which greatly simplifies things

ifeq ($(strip ${TOPDIR}),)
	TOPDIR_=/home/rafael2k/programs/devel/elks
endif

C86LIB=/home/rafael2k/programs/devel/8086-toolchain/libc

INCLUDES=-I$(TOPDIR)/libc/include -I$(TOPDIR)/elks/include -I$(C86DIR)/libc/include
DEFINES=-D__C86__ -D__STDC__

CPPFLAGS=$(INCLUDES) $(DEFINES)
CFLAGS=-O -warn=4 -lang=c99 -align=yes -stackopt=minimum -peep=all -stackcheck=no
ASFLAGS=-f as86
LDFLAGS=-0 -i -L$(C86LIB)

CPP=../host-bin/cpp86
CC=../host-bin/c86
AS=../host-bin/nasm
LD=../host-bin/ld86


all: test


all: test

test: test.o
	$(LD) $(LDFLAGS) test.o -lc86 -o test

test.o: test.asm
	$(AS) $(ASFLAGS)  test.asm -o test.o

test.asm: test.i
	$(CC) $(CFLAGS) -O test.i test.asm

test.i: test.c clib.h
	$(CPP) $(CPPFLAGS) test.c -o test.i

clean:
	rm -f *.o *.a *.i test.asm

# end
