# Makefile for make!
BINDIR=../host-bin

OBJS	= check.o input.o macro.o main.o make.o reader.o rules.o

# unix not defined under Xenix ???
CFLAGS = -O3 -Dunix

all:	$(BINDIR)/make86

clean:
	rm -f *.o $(BINDIR)/make86

$(BINDIR)/make86:	$(OBJS)
	$(CC) -o $(BINDIR)/make86 $(OBJS)

$(OBJS):	h.h
