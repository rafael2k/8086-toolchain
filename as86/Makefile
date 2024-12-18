# Makefile for host compilation

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

BINDIR=../host-bin
LOCALFLAGS = -Wno-missing-field-initializers -Wno-sign-compare
SRCS = main.c cpp.c hash.c token1.c token2.c mem.c
PROG = $(BINDIR)/as86

OBJS	= as.o assemble.o errors.o express.o \
		 genbin.o genlist.o genobj.o gensym.o \
		 keywords.o macro.o mops.o pops.o readsrc.o \
		 scan.o table.o typeconv.o alloc.o mem.o

#all: $(PROG) as86_encap

all: $(PROG)

$(PROG): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

as86_encap: as86_encap.sh
	sed -e "s:%%LIBDIR%%:$(LIBDIR):" -e "s:%%BINDIR%%:$(BINDIR):" \
		< as86_encap.sh > tmp
	@mv -f tmp $@
	chmod +x $@

install: all
	install -d $(LIBDIR)
	install -m 755 as86 $(LIBDIR)
	install -d $(BINDIR)
	install -m 755 as86_encap $(BINDIR)/as86_encap
	-@rm -f tmp

clean realclean clobber:
	rm -f *.o $(PROG) as86_encap

.c.o:
	$(CC) $(CFLAGS) -c $<

$(OBJS): const.h errors.h

as.o: const.h type.h byteord.h macro.h file.h flag.h globvar.h
assemble.o: const.h type.h address.h globvar.h opcode.h scan.h
error.o: const.h type.h
express.o: const.h type.h address.h globvar.h scan.h source.h
genbin.o: const.h type.h address.h file.h globvar.h
genlist.o: const.h type.h address.h flag.h file.h globvar.h macro.h scan.h \
	   source.h
genobj.o: const.h type.h address.h file.h globvar.h
gensym.o: const.h type.h flag.h file.h globvar.h
keywords.o: const.h type.h globvar.h opcode.h
macro.o: const.h type.h globvar.h scan.h macro.h
mops.o: const.h type.h globvar.h opcode.h scan.h address.h
pops.o: const.h type.h address.h flag.h globvar.h opcode.h scan.h
readsrc.o: const.h type.h flag.h file.h globvar.h macro.h scan.h source.h
scan.o: const.h type.h globvar.h scan.h 
table.o: const.h type.h globvar.h opcode.h scan.h
