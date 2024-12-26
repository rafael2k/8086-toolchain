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
SRCS = as.c assemble.c errors.c express.c \
     genbin.c genlist.c genobj.c gensym.c \
     keywords.c macro.c mops.c pops.c readsrc.c \
     scan.c table.c typeconv.c alloc.c mem.c

all: $(PROG)

$(PROG): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

as86_encap: as86_encap.sh
	sed -e "s:%%LIBDIR%%:$(LIBDIR):" -e "s:%%BINDIR%%:$(BINDIR):" \
		< as86_encap.sh > tmp
	@mv -f tmp $@
	chmod +x $@

clean:
	rm -f *.o $(PROG) as86_encap
