# C86 library Makefile

CPP=../host-bin/cpp86
CC=../host-bin/c86 
AS=../host-bin/as86
LD=../host-bin/ld86
AR=../host-bin/ar86
NASM=../host-bin/nasm86

INCLUDES=
DEFINES=
C86FLAGS="-g -v -O -bas86 -separate=yes -warn=4 -lang=c99 -align=yes -stackopt=minimum -peep=all -stackcheck=no"
CPPFLAGS=-0 $(INCLUDES) $(DEFINES)
CFLAGS=$(C86FLAGS)
ASFLAGS=-0 -O -j -w-
NASMLAGS=-f as86
ARFLAGS=r
LDFLAGS=-0 -i

OBJS=syscall.o syscall2.o c86lib.o

all: libc86.a

libc86.a: $(OBJS)
	rm -f libc86.a
	$(AR) $(ARFLAGS) libc86.a $(OBJS)

%.o: %.s
	$(AS) $(ASFLAGS) -o $@ -l $*.lst $^

#%.o: %.asm
#	$(NASM) $(NASMFLAGS) -o $@ $^

clean:
	rm -f *.o *.a *.lst
