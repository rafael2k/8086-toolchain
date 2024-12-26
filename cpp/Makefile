# CPP86 Makefile for host compilation

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
PROG = $(BINDIR)/cpp86
SRCS = main.c cpp.c hash.c token1.c token2.c mem.c

all: $(PROG)

$(PROG): $(OBJS)
	$(LD) $(LDFLAGS) -o $(PROG) $(OBJS)

token1.h: token1.tok
	gperf -aptTc -N is_ctok -H hash1 --output-file $@ $<

token2.h: token2.tok
	gperf -aptTc -k1,3 -N is_ckey -H hash2 --output-file $@ $<

clean:
	rm -f $(PROG) $(OBJS)
