all:
	make cleaneobjs
	make elks
	make cleanhobjs
	make host

elks:
	make -C compiler -f Makefile.elks
	make -C cpp -f Makefile.elks
	make -C as -f Makefile.elks
	make -C ld -f Makefile.elks
	make -C ar -f Makefile.elks
	make -C make -f Makefile.elks
	make -C disasm -f Makefile.elks
	make -C nasm -f Makefile.elks
	make -C nasm32 -f Makefile.elks

host:
	make -C compiler
	make -C cpp
	make -C as
	make -C ld
	make -C ar
	make -C make
	make -C disasm
	make -C nasm
	make -C nasm32
	make -C emulator
	make -C libc

copy:
	cp elks-bin/* $(TOPDIR)/elkscmd/rootfs_template/root
	rm -f $(TOPDIR)/elkscmd/rootfs_template/root/ndisasm86
	rm -f $(TOPDIR)/elkscmd/rootfs_template/root/nasm86
	cp libc/*.a $(TOPDIR)/elkscmd/rootfs_template/root

.PHONY: clean cleanobjs

clean: cleaneobjs cleanhobjs

cleaneobjs:
	make -C compiler -f Makefile.elks clean
	make -C cpp -f Makefile.elks clean
	make -C as -f Makefile.elks clean
	make -C ld -f Makefile.elks clean
	make -C ar -f Makefile.elks clean
	make -C make -f Makefile.elks clean
	make -C disasm -f Makefile.elks clean
	make -C nasm -f Makefile.elks clean
	make -C nasm32 -f Makefile.elks clean

cleanhobjs:
	make -C compiler clean
	make -C cpp clean
	make -C as clean
	make -C ld clean
	make -C ar clean
	make -C make clean
	make -C disasm clean
	make -C nasm clean
	make -C nasm32 clean
	make -C emulator clean
	make -C libc clean
