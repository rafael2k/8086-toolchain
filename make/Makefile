# Makefile for make!
EMHOME=../..

BINDIR=../host-bin/

OBJS	=	check.o input.o macro.o main.o \
		make.o reader.o rules.o
# unix not defined under Xenix ???
CFLAGS = -Dunix	

all:	$(BINDIR)make

install: $(BINDIR)make
	cp $(BINDIR)make $(EMHOME)/bin/make

cmp:	make
	cmp $(BINDIR)make $(EMHOME)/bin/make

clean:
	rm -f *.o $(BINDIR)make

pr:
	@pr README Makefile h.h main.c check.c input.c macro.c make.c reader.c rules.c

opr:
	make pr ^ opr

$(BINDIR)make:	$(OBJS)
	$(CC) -o $(BINDIR)make $(OBJS)

$(OBJS):	h.h
