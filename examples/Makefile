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
LDLIBS=-lc86
NASMFLAGS=-f as86

# Automated rules for C86 toolchain
%.o: %.c

%.i: %.c
	$(CPP) $(CPPFLAGS) -o $*.i $<

%.as: %.i
	$(CC) $(CFLAGS) $< $*.as

%.o: %.as
	$(AS) $(ASFLAGS) -o $*.o -l $*.lst $*.as

%.o: %.s
	$(AS) $(ASFLAGS) -o $*.o $*.s

##### End of standardized section #####

#DEFINES+=

PROGS=chess test show_fonts vgatest

all: $(PROGS)
ifeq "$(TOPDIR)" "/Users/greg/net/elks-gh"
	cp -p $(PROGS) $(TOPDIR)/elkscmd/rootfs_template/root
endif

show_fonts: show_fonts.o
	$(LD) $(LDFLAGS) -o $@ $^ $(LDLIBS)

.PRECIOUS: test.i test.as cprintf.i cprintf.as
test: test.o cprintf.o
	$(LD) $(LDFLAGS) -o $@ $^ $(LDLIBS)

.PRECIOUS: chess.i chess.as
chess: chess.o
	$(LD) $(LDFLAGS) -o $@ $^ $(LDLIBS)

.PRECIOUS: vgatest.i vgatest.as
vgatest: vgatest.o
	$(LD) $(LDFLAGS) -o $@ $^ $(LDLIBS)


clean:
	rm -f *.o *.as *.i *.lst $(PROGS)
