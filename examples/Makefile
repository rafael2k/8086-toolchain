# Examples Makefile for host building of ELKS example programs

ifndef TOPDIR
$(error ELKS TOPDIR is not defined)
endif

CPP=../host-bin/cpp86
CC=../host-bin/c86
AS=../host-bin/as86
LD=../host-bin/ld86
NASM=../host-bin/nasm86

C86LIB=$(TOPDIR)/libc
INCLUDES=-I$(TOPDIR)/libc/include -I$(TOPDIR)/elks/include -I$(C86LIB)/include/c86
DEFINES=

CPPFLAGS=-0 $(INCLUDES) $(DEFINES)
CFLAGS=-g -O -bas86 -warn=4 -lang=c99
CFLAGS+=-align=yes -separate=yes -stackopt=minimum -peep=all -stackcheck=no
#ASFLAGS=-0 -j -O -w-
ASFLAGS=-0 -j
LDFLAGS=-0 -i -L$(C86LIB)
NASMFLAGS=-f as86

# Automated rules for C86 toolchain
%.o: %.c

%.i: %.c
	$(CPP) $(CPPFLAGS) -o $*.i $<

%.as: %.i
	$(CC) $(CFLAGS) $< $*.as

%.o: %.as
	$(AS) $(ASFLAGS) -o $*.o -l $*.lst $*.as

##### End of standardized section #####

#DEFINES+=

all: test chess show_fonts vgatest

show_fonts: show_fonts.o
	$(LD) $(LDFLAGS) show_fonts.o -o show_fonts

show_fonts.o: show_fonts.s
	$(AS) $(ASFLAGS) show_fonts.s -o show_fonts.o

.PRECIOUS: test.i test.as cprintf.i cprintf.as
test: test.o cprintf.o
	$(LD) $(LDFLAGS) test.o cprintf.o -lc86 -o test
ifeq "$(TOPDIR)" "/Users/greg/net/elks-gh"
	cp test $(TOPDIR)/elkscmd/rootfs_template/root
endif

.PRECIOUS: chess.i chess.as
chess: chess.o
	$(LD) $(LDFLAGS) chess.o -lc86 -o chess
ifeq "$(TOPDIR)" "/Users/greg/net/elks-gh"
	cp chess $(TOPDIR)/elkscmd/rootfs_template/root
endif

.PRECIOUS: vgatest.i vgatest.as
vgatest: vgatest.o
	$(LD) $(LDFLAGS) vgatest.o -lc86 -o vgatest
ifeq "$(TOPDIR)" "/Users/greg/net/elks-gh"
	cp vgatest $(TOPDIR)/elkscmd/rootfs_template/root
endif


clean:
	rm -f *.o *.as *.i *.lst test chess show_fonts vgatest
