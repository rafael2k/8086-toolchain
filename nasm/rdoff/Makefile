# $Id: Makefile.in,v 1.27 2002/05/19 05:22:45 hpa Exp $
#
# Auto-configuring Makefile for RDOFF object file utils; part of the
# Netwide Assembler
#
# The Netwide Assembler is copyright (C) 1996 Simon Tatham and
# Julian Hall. All rights reserved. The software is
# redistributable under the licence given in the file "Licence"
# distributed in the NASM archive.

top_srcdir	= @top_srcdir@
srcdir		= @srcdir@
VPATH		= @srcdir@
prefix		= @prefix@
exec_prefix	= @exec_prefix@
bindir		= @bindir@
mandir		= @mandir@

CC		= @CC@
CFLAGS		= @CFLAGS@ @GCCFLAGS@ -I$(srcdir) -I$(top_srcdir)
LDFLAGS		= @LDFLAGS@

INSTALL		= @INSTALL@
INSTALL_PROGRAM	= @INSTALL_PROGRAM@
INSTALL_DATA	= @INSTALL_DATA@
LN_S 		= @LN_S@

LDRDFLIBS 	= rdoff.o nasmlib.o symtab.o collectn.o rdlib.o segtab.o hash.o
RDXLIBS 	= rdoff.o rdfload.o symtab.o collectn.o hash.o

# Binary suffixes
O               = @OBJEXT@
X               = @EXEEXT@

PROGRAMS = rdfdump$(X) ldrdf$(X) rdx$(X) rdflib$(X) \
	   rdf2bin$(X) rdf2com$(X) rdf2ihx$(X)

.SUFFIXES: .c .i .s .$(O) .1 .man

.c.$(O):
	$(CC) -c $(CFLAGS) $<

all: $(PROGRAMS)

rdfdump$(X): rdfdump.$(O)
	$(CC) $(LDFLAGS) -o rdfdump$(X) rdfdump.$(O)
ldrdf$(X): ldrdf.$(O) $(LDRDFLIBS)
	$(CC) $(LDFLAGS) -o ldrdf$(X) ldrdf.$(O) $(LDRDFLIBS)
rdx$(X): rdx.$(O) $(RDXLIBS)
	$(CC) $(LDFLAGS) -o rdx$(X) rdx.$(O) $(RDXLIBS)
rdflib$(X): rdflib.$(O)
	$(CC) $(LDFLAGS) -o rdflib$(X) rdflib.$(O)
rdf2bin$(X): rdf2bin.$(O) $(RDXLIBS) nasmlib.$(O)
	$(CC) $(LDFLAGS) -o rdf2bin$(X) rdf2bin.$(O) $(RDXLIBS) nasmlib.$(O)
rdf2com$(X):
	rm -f rdf2com$(X) && $(LN_S) rdf2bin$(X) rdf2com$(X)
rdf2ihx$(X): rdf2ihx.$(O) $(RDXLIBS) nasmlib.$(O)
	$(CC) $(LDFLAGS) -o rdf2ihx$(X) rdf2ihx.$(O) $(RDXLIBS) nasmlib.$(O)

rdf2ihx.$(O): rdf2ihx.c
rdf2bin.$(O): rdf2bin.c
rdfdump.$(O): rdfdump.c
rdoff.$(O): rdoff.c rdoff.h
ldrdf.$(O): ldrdf.c rdoff.h ../nasmlib.h symtab.h collectn.h rdlib.h
symtab.$(O): symtab.c symtab.h
collectn.$(O): collectn.c collectn.h
rdx.$(O): rdx.c rdoff.h rdfload.h symtab.h
rdfload.$(O): rdfload.c rdfload.h rdoff.h collectn.h symtab.h
rdlib.$(O): rdlib.c rdlib.h
rdflib.$(O): rdflib.c
segtab.$(O): segtab.c

nasmlib.$(O): $(top_srcdir)/nasmlib.c
	cd .. && $(MAKE) nasmlib.$(O)
	cp ../nasmlib.$(O) .

clean:
	rm -f *.$(O) $(PROGRAMS)

spotless: clean
	rm -f Makefile

distclean: spotless

install: all
	$(INSTALL_PROGRAM) rdfdump$(X) $(INSTALLROOT)$(bindir)/rdfdump$(X)
	$(INSTALL_PROGRAM) ldrdf$(X) $(INSTALLROOT)$(bindir)/ldrdf$(X)
	$(INSTALL_PROGRAM) rdx$(X) $(INSTALLROOT)$(bindir)/rdx$(X)
	$(INSTALL_PROGRAM) rdflib$(X) $(INSTALLROOT)$(bindir)/rdflib$(X)
	$(INSTALL_PROGRAM) rdf2bin$(X) $(INSTALLROOT)$(bindir)/rdf2bin$(X)
	$(INSTALL_PROGRAM) rdf2ihx$(X) $(INSTALLROOT)$(bindir)/rdf2ihx$(X)
	cd $(INSTALLROOT)$(bindir) && rm -f rdf2com$(X) && $(LN_S) rdf2bin$(X) rdf2com$(X)
