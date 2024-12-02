# Sample Makefile for host compilation

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
SRCS = main.c cpp.c hash.c token1.c token2.c
PROG = $(BINDIR)/cpp86

all: $(PROG)

$(PROG): $(OBJS)
	$(LD) $(LDFLAGS) -o $(PROG) $(OBJS)

main.o: cc.h
cpp.o: cc.h
hash.o: cc.h
tree.o: cc.h

token1.o: token1.h
token2.o: token2.h

token1.h: token1.tok
	gperf -aptTc -N is_ctok -H hash1 --output-file $@ $<

token2.h: token2.tok
	gperf -aptTc -k1,3 -N is_ckey -H hash2 --output-file $@ $<

clean:
	rm -f $(PROG) $(OBJS)

maintclean: clean
	rm -f token1.h token2.h
