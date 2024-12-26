# Makefile for host compilatio

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
LOCALFLAGS = -Wno-unused-parameter
PROG = $(BINDIR)/c86
SRCS = \
    analyze.c \
    cglbdef.c \
    cmain.c \
    decl.c \
    expr.c \
    extern.c \
    genicode.c \
    geninit.c \
    genstmt.c \
    genutil.c \
    getsym.c \
    init.c \
    intexpr.c \
    list.c \
    memmgt.c \
    msgout.c \
    optimize.c \
    outgen.c \
    stmt.c \
    symbol.c \
    system.c \
    types.c \
    outdbg_d.c \
    gendbg.c \
    inline.c \
    gen86.c \
    peepx86.c \
    regx86.c \
    outx86_a.c \
    outx86_b.c \
    outx86_g.c \
    outx86_n.c \
    outx86_s.c \
    mem.c \

all: $(PROG)

$(PROG): $(OBJS)
	$(LD) $(LDFLAGS) -o $(PROG) $(OBJS)

clean:
	rm -f $(PROG) $(OBJS)
