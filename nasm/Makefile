# Unix fall-back makefile for the Netwide Assembler. For use if
# `configure' fails to generate a workable Makefile.
#
# If `configure' doesn't work for you, *please* inform
# <nasm-bugs@lists.sourceforge.net>
#
# The Netwide Assembler is copyright (C) 1996 Simon Tatham and
# Julian Hall. All rights reserved. The software is
# redistributable under the GNU Lesser General Public License.

# You may need to adjust these values.

prefix = /usr/local
CC = cc
CFLAGS = -O3 -I.
PERL = perl
MKDIR_P = mkdir -p
BINDIR=../host-bin

INSTALL = install -c
INSTALL_PROGRAM = $(INSTALL)
INSTALL_DATA = $(INSTALL) -m 644

exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin
mandir = $(prefix)/man

# You _shouldn't_ need to adjust anything below this line.

.SUFFIXES: .c .o .h .mac .pl

.c.o:
	$(CC) -c $(CFLAGS) $<

NASM = nasm.o nasmlib.o float.o insnsa.o assemble.o labels.o parser.o \
       	outform.o outbin.o outaout.o outcoff.o outelf.o \
       	outobj.o outas86.o outdbg.o preproc.o listing.o \
       	eval.o outrdf2.o outieee.o mem.o

NDISASM = ndisasm.o disasm.o sync.o nasmlib.o insnsd.o

all: $(BINDIR)/nasm86

$(BINDIR)/nasm86: $(NASM)
	$(CC) -o $(BINDIR)/nasm86 $(NASM)

$(BINDIR)/ndisasm86: $(NDISASM)
	$(CC) -o $(BINDIR)/ndisasm86 $(NDISASM)

directory:
	$(MKDIR_P) $(BINDIR)

# These files contains all the standard macros that are derived from
# the version number.
version.h: version version.pl
	$(PERL) version.pl h < version > version.h

version.mac: version version.pl
	$(PERL) version.pl mac < version > version.mac

# This source file is generated from the standard macros file
# `standard.mac' by another Perl script. Again, it's part of the
# standard distribution.

macros.c: macros.pl standard.mac version.mac
	$(PERL) macros.pl standard.mac version.mac

insnsa.c: insns.pl insns.dat
	$(PERL) insns.pl -a insns.dat

insnsd.c: insns.pl insns.dat
	$(PERL) insns.pl -d insns.dat

insnsi.h: insns.pl insns.dat
	$(PERL) insns.pl -i insns.dat

insnsn.c: insns.pl insns.dat
	$(PERL) insns.pl -n insns.dat

# These source files are generated from regs.dat by yet another
# perl script.
regs.c: regs.dat regs.pl
	$(PERL) regs.pl c regs.dat > regs.c
regflags.c: regs.dat regs.pl
	$(PERL) regs.pl fc regs.dat > regflags.c
regdis.c: regs.dat regs.pl
	$(PERL) regs.pl dc regs.dat > regdis.c
regvals.c: regs.dat regs.pl
	$(PERL) regs.pl vc regs.dat > regvals.c
regs.h: regs.dat regs.pl
	$(PERL) regs.pl h regs.dat > regs.h

# This target generates all files that require perl.
# This allows easier generation of distribution (see dist target).
PERLREQ = macros.c insnsa.c insnsd.c insnsi.h insnsn.c \
	  regs.c regs.h regflags.c regdis.c regvals.c \
	  version.h version.mac 
perlreq: $(PERLREQ)

#install: nasm ndisasm
#	$(INSTALL_PROGRAM) nasm $(bindir)/nasm
#	$(INSTALL_PROGRAM) ndisasm $(bindir)/ndisasm
#	$(INSTALL_DATA) nasm.1 $(mandir)/man1/nasm.1
#	$(INSTALL_DATA) ndisasm.1 $(mandir)/man1/ndisasm.1

clean: directory
	rm -f *.o $(BINDIR)/nasm86 $(BINDIR)/ndisasm86
	$(MAKE) -C rdoff clean

rdf:
	$(MAKE) -C rdoff

rdf_install install_rdf:
	$(MAKE) -C rdoff install

#-- Magic hints to mkdep.pl --#
# @object-ending: ".o"
# @path-separator: "/"
#-- Everything below is generated by mkdep.pl - do not edit --#
assemble.o: assemble.c insns.h assemble.h regvals.c nasm.h regs.h insnsi.h \
 nasmlib.h version.h
disasm.o: disasm.c insns.h regs.c sync.h names.c nasm.h disasm.h regs.h \
 insnsn.c insnsi.h version.h regdis.c
eval.o: eval.c nasm.h regs.h labels.h nasmlib.h version.h eval.h
float.o: float.c nasm.h regs.h version.h
insnsa.o: insnsa.c insns.h nasm.h regs.h insnsi.h version.h
insnsd.o: insnsd.c insns.h nasm.h regs.h insnsi.h version.h
insnsn.o: insnsn.c
labels.o: labels.c nasm.h regs.h nasmlib.h version.h
listing.o: listing.c listing.h nasm.h regs.h nasmlib.h version.h
macros.o: macros.c
names.o: names.c regs.c insnsn.c
nasm.o: nasm.c listing.h preproc.h insns.h outform.h assemble.h parser.h \
 nasm.h regs.h labels.h insnsi.h nasmlib.h version.h eval.h
nasmlib.o: nasmlib.c insns.h regs.c names.c nasm.h regs.h insnsn.c insnsi.h \
 nasmlib.h version.h
ndisasm.o: ndisasm.c insns.h sync.h nasm.h disasm.h regs.h insnsi.h \
 nasmlib.h version.h
outform.o: outform.c outform.h nasm.h regs.h version.h
outaout.o: outaout.c outform.h nasm.h regs.h nasmlib.h \
 version.h
outas86.o: outas86.c outform.h nasm.h regs.h nasmlib.h \
 version.h
outbin.o: outbin.c outform.h nasm.h regs.h nasmlib.h version.h
outcoff.o: outcoff.c outform.h nasm.h regs.h nasmlib.h \
 version.h
outdbg.o: outdbg.c outform.h nasm.h regs.h nasmlib.h version.h
outelf.o: outelf.c outform.h nasm.h regs.h nasmlib.h version.h
outieee.o: outieee.c outform.h nasm.h regs.h nasmlib.h \
 version.h
outobj.o: outobj.c outform.h nasm.h regs.h nasmlib.h version.h
outrdf.o: outrdf.c outform.h nasm.h regs.h nasmlib.h version.h
outrdf2.o: outrdf2.c outform.h nasm.h regs.h nasmlib.h \
 version.h
parser.o: parser.c insns.h parser.h nasm.h regs.h insnsi.h regflags.c \
 float.h nasmlib.h version.h
preproc.o: preproc.c nasm.h macros.c regs.h nasmlib.h version.h
regdis.o: regdis.c
regflags.o: regflags.c
regs.o: regs.c
regvals.o: regvals.c
sync.o: sync.c sync.h
mem.o: mem.c
