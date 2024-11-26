all:
	make cleaneobjs
	make elks
	make cleanhobjs
	make host

elks: cleaneobjs
	make -C compiler -f Makefile.elks
	make -C assembler -f Makefile.elks
	make -C cpp -f Makefile.elks
	make -C ld -f Makefile.elks
	make -C ndisasm -f Makefile.elks
	make -C make -f Makefile.elks
	make -C ar -f Makefile.elks

host: cleanhobjs
	make -C compiler
	make -C assembler
	make -C cpp
	make -C ld
	make -C ndisasm
	make -C make
	make -C ar
	make -C emulator

.PHONY: clean cleanobjs

clean: cleaneobjs cleanhobjs

cleaneobjs:
	make -C compiler -f Makefile.elks clean
	make -C assembler -f Makefile.elks clean
	make -C cpp -f Makefile.elks clean
	make -C ld -f Makefile.elks clean
	make -C ndisasm -f Makefile.elks clean
	make -C make -f Makefile.elks clean
	make -C ar -f Makefile.elks clean

cleanhobjs:
	make -C compiler clean
	make -C assembler clean
	make -C cpp clean
	make -C ld clean
	make -C ndisasm clean
	make -C make clean
	make -C ar clean
	make -C emulator clean
