all:
	make clean
	make elks
	make clean
	make host

# HOST_BIN_DIR=bin/

elks: cleanobjs
	make -C compiler -f Makefile.elks
	make -C assembler -f Makefile.elks
	make -C cpp -f Makefile.elks
	make -C ld -f Makefile.elks
	make -C ndisasm -f Makefile.elks
	make -C make -f Makefile.elks

host:
	make -C compiler
	make -C assembler
	make -C cpp
	make -C ld
	make -C ndisasm
	make -C make
	make -C emulator

.PHONY: clean cleanobjs

clean: cleanobjs

cleanobjs:
	make -C compiler -f Makefile.elks clean
	make -C assembler -f Makefile.elks clean
	make -C cpp -f Makefile.elks clean
	make -C ld -f Makefile.elks clean
	make -C ndisasm -f Makefile.elks clean
	make -C make -f Makefile.elks clean
	make -C compiler clean
	make -C assembler clean
	make -C cpp clean
	make -C ld clean
	make -C ndisasm clean
	make -C make clean
	make -C emulator clean
#	rm -rf $(BIN_DIR)

#reproducer:
#	make -C emulator/ reproducer
