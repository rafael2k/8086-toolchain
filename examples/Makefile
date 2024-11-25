##
#
#
# @file
# @version 0.1

CPP=../host-bin/cpp
CC=../host-bin/c86
AS=../host-bin/nasm
LD=../host-bin/ld86

all: test

test: test.o clib.o
	$(LD) -0 -i test.o clib.o -o test

test.o: test.s
	$(AS) -f as86 test.s -o test.o

test.s: test.i
	$(CC) -O test.i test.s

test.i: test.c clib.h
	$(CPP) test.c -o test.i

clib.o: clib.s
	$(AS) -f as86 clib.s -o clib.o

clean:
	rm *.o *.i test.s

# end
