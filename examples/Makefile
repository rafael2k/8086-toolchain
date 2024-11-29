##
#
#
# @file
# @version 0.1

CPP=../host-bin/cpp86
CC=../host-bin/c86
AS=../host-bin/nasm
LD=../host-bin/ld86
AR=../host-bin/ar86

all: test


all: test

test: test.o clib.a
	$(LD) -0 -i test.o clib.a -o test

test.o: test.asm
	$(AS) -f as86 test.asm -o test.o

test.asm: test.i
	$(CC) -O test.i test.asm

test.i: test.c clib.h
	$(CPP) test.c -o test.i

clib.a: syscall.o c86lib.o
	rm -f clib.a
	$(AR) qv clib.a syscall.o c86lib.o

syscall.o: ../lib/syscall.asm
	$(AS) -f as86 ../lib/syscall.asm -o syscall.o

c86lib.o: ../lib/c86lib.asm
	$(AS) -f as86 ../lib/c86lib.asm -o c86lib.o

clean:
	rm -f *.o *.a *.i test.asm

# end
