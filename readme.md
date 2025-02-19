# Native ELKS Toolchain

ELKS 8086 Toolchain is a work-in-progress project for providing a native ELKS 8086 C compiler toolchain.

This is a fork of the upstream 8086-toolchain, which contains and old NASM version (by Simon Tatham and Julian Hall), and 
the C86 C compiler by Matthew Brandt, Christoph van Wuellen, Keith and Dave Walker.
It was introduced to complete the ELKS native toolchain software by Bruce Evans, Jody Bruchon et al., namely dev86's cpp, ld, ar and as. 
Make is courtesy of David Given, Carl Eric Codere and Ceriel Jacobs, while disasm (dis88) was originally authored by G. M. Harding.
Many improvements and changes by Rafael Diniz and Gregory Haerr for making all the software run on ELKS.

The most important components of the toolchain are:

- cpp, ld, as and ar from dev86: https://codeberg.org/jbruchon/dev86
- make: https://github.com/davidgiven/ack/tree/default/util/make
- C compiler (C86): Also called C68. [Manual](https://github.com/ghaerr/8086-toolchain/blob/dev86/man/c86man.txt), [Historic](http://ftp.funet.fi/pub/minix/lang/c68/) [versions](https://ladsoft.tripod.com/cc386_compiler.html) available, by Matthew Brandt, Christoph van Wuellen, Keith and Dave Walker, and others.
- disasm:  Check README inside the directory

In order to build the ELKS binaries, gcc-ia16 and also OpenWatcom v2 is required. Please refer to [Wiki: Setting up the 8086 toolchain (C86 compiler and tools)](https://github.com/ghaerr/elks/wiki/Setting-up-the-8086-toolchain-(C86-compiler-and-tools)).

To build, type "make". Elks binaries will be in "elks-bin" and host binaries in "host-bin". Build should
work on any recent Linux or MacOS with OpenWatcom v2 installed (source the OW owsetenv.sh script for setting
OpenWatcom environment variables and env.sh from ELKS, or just env.sh from ELKS and wcenv.sh in libc directory of 
ELKS top-dir, after adjusting the path to OpenWatcom directory).

## Build and Install

Use this instructions: [Setting up the 8086 toolchain (C86 compiler and tools)](https://github.com/ghaerr/elks/wiki/Setting-up-the-8086-toolchain-(C86-compiler-and-tools)).

## Issues

Please report issues at [Issues](https://github.com/ghaerr/8086-toolchain/issues).
