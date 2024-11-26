# Copyright (c) 1999 Greg Haerr <greg@censoft.com>
# This file is part of the Linux-8086 Development environment and is
# distributed under the GNU General Public License.

BINDIR =../host-bin/
LIBDIR	=/usr/bin
CFLAGS	=-O2 -pipe
LDFLAGS	=
DEFS	=
OBJS    = ar.o

all: $(BINDIR)ar86

$(BINDIR)ar86: $(OBJS)
	mkdir -p $(BINDIR)
	$(CC) $(LDFLAGS) $(OBJS) -o $@

install: $(BINDIR)ar86
	install -d $(LIBDIR)
	install -m 755 $(BINDIR)ar86 $(LIBDIR)

clean realclean clobber:
	rm -f *.o $(BINDIR)ar86 ar

$(OBJS): ar.h rel_aout.h

.c.o:
	$(CC) $(CFLAGS) $(DEFS) -c $< -o $@
