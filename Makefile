all: host elks

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
	make -C examples

copy:
	cp elks-bin/* $(TOPDIR)/elkscmd/rootfs_template/root
	rm -f $(TOPDIR)/elkscmd/rootfs_template/root/ndisasm86
	rm -f $(TOPDIR)/elkscmd/rootfs_template/root/nasm86

.PHONY: clean copy

clean:
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
	make -C examples clean
	make -C compiler -f Makefile.elks clean
	make -C cpp -f Makefile.elks clean
	make -C as -f Makefile.elks clean
	make -C ld -f Makefile.elks clean
	make -C ar -f Makefile.elks clean
	make -C make -f Makefile.elks clean
	make -C disasm -f Makefile.elks clean
	make -C nasm -f Makefile.elks clean
	make -C nasm32 -f Makefile.elks clean
