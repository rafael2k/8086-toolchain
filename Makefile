all: host elks

BIN_DIR=bin/

elks:
	make -C compiler -f Makefile.elks
	make -C assembler -f Makefile.elks
	make -C cpp -f Makefile.elks
	make -C ld -f Makefile.elks
	make -C ndisasm -f Makefile.elks
#	make -C emulator -f Makefile.elks

host:
	make -C compiler
	make -C assembler
	make -C emulator
	make -C cpp
	make -C ld
	make -C ndisasm


clean:
	make -C compiler clean
	make -C assembler clean
	make -C emulator clean
	make -C cpp clean
	make -C ld clean
	make -C ndisasm clean
	rm -rf $(BIN_DIR)

#reproducer:
#	make -C emulator/ reproducer
