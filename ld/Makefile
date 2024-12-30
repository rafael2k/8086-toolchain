# LD86 Makefile for host compilation

############# Standard Section for Host C ##############
CC = cc
LD = cc
CLBASE = -O3
WARNINGS = -Wall -Wextra
INCLUDES =
DEFINES =
CFLAGS = $(CLBASE) $(WARNINGS) $(INCLUDES) $(DEFINES) $(LOCALFLAGS)
LDFLAGS =

OBJS = $(SRCS:.c=.o)
%.o: %.c
	$(CC) -c $(CFLAGS) -o $*.o $<

############# End of Standard Section ##############

# Will need some of these if you want native executables on non-Linux/i386
# -DDETECTAOUT			# Turn on detection.
# -DV7_A_OUT			# a.out.h is like V7
# -DBSD_A_OUT			# a.out.h is like BSD
# -DSTANDARD_GNU_A_OUT		# a.out.h is like GNU normal.
# -DREL_OUTPUT -DBUGCOMPAT	# -r Produces weird *.o files.
#
# An alternative file for a non-standard a.out.h (eg i386 linux on an Alpha)
# NATIVE=-DA_OUT_INCL='"a_out_local.h"' 
#DEFINES += -DREL_OUTPUT -DREL_NATIVE
#SRCS += writebin.c writeemu.c

BINDIR=../host-bin
LOCALFLAGS = -Wno-missing-field-initializers -Wno-sign-compare
PROG = $(BINDIR)/ld86 $(BINDIR)/objdump86
SRCS = dumps.c io.c ld.c readobj.c table.c typeconv.c linksyms.c mkar.c \
      writex86.c

all: $(PROG)

$(BINDIR)/ld86: $(OBJS)
	$(LD) $(LDFLAGS) -o $(BINDIR)/ld86 $(OBJS)

$(BINDIR)/objdump86: objdump86.o
	$(LD) $(LDFLAGS) -o $(BINDIR)/objdump86 objdump86.o

clean:
	rm -f $(PROG) $(OBJS) *.o
