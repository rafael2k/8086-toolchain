# C86 library Makefile

CPP=../host-bin/cpp86
CC=../host-bin/c86 
AS=../host-bin/nasm86
LD=../host-bin/ld86
AR=../host-bin/ar86

DEFINES=-D__C86__ -D__STDC__
C86FLAGS="-O -warn=4 -lang=c99 -align=yes -stackopt=minimum -peep=all -stackcheck=no"
CPPFLAGS=$(INCLUDES) $(DEFINES)
CFLAGS=$(C86FLAGS)
ASFLAGS=-f as86
ARFLAGS=r
LDFLAGS=-0 -i

OBJS=syscall.o syscall2.o c86lib.o

all: libc86.a

libc86.a: $(OBJS)
	rm -f libc86.a
	$(AR) $(ARFLAGS) libc86.a $(OBJS)

%.o: %.asm
	$(AS) $(ASFLAGS) -o $@ $^

clean:
	rm -f *.o *.a
