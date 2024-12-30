c68/c386 Release 4.0
~~~~~~~~~~~~~~~~~~~~
This is to announce the availablity of c68/c386 Version 4.0.  This
release is being done with the sanction of Christoph van Wuellen who
posted earlier releases of c68/c386.

This release is the result of a significant amount of work done by my
brother and myself on c68 over the last 6 months.   Although we are
primarily users of the c68 variant of this compiler, many of the
improvements that have been made are to the front-end part that is
common to both c68 and c386.

Our aim was to produce a compiler that would functional be a direct
equivalent to the standard Minix ack compiler, but would be  superior in
terms of facilities supported and code generated.  We believe that we
have achieved this.    In fact, we have gone further in that enough ANSI
facilties are supported that you can now use c68 as a compiler suitable
for compiling the ANSI'fied code of Minix 1.6.xx without the need to
invest in a new ANSI compiler.    We do not pretend that c68/c386 is a
full ANSI compiler - just that it now has support for those parts of the
ANSI standard that most people use!  If you want a full ANSI compiler
then you can get GNU C (with all its attendant size overheads).

There are changes throughout the compiler, but major new features in
this release are:

a)	A major overhaul of the reporting system for errors and warnings.
	The new system is far more informative and extensive.

b)	Support for ANSI style function prototypes and declarations.

c)	A number of other smaller enhancements in the direction of the ANSI
	standard.

d)	Support for IEEE 64-bit floating point in the c68 variant.

e)	Improvements in the peep-hole optimisers.  Our target has been to
	keep the final object size stable despite the large number of new
	features added to the compiler.  This has largely been achieved!

f)	Bit fields now work correctly.

g)	A host of bug fixes.

The release is being posted in the following parts:
	misc.uue	Miscellaneous items
	c68.uaa/b	(2 parts) Working binary of IEEE version of c68
	docs.uue	Documentation
	src.uaa/b/c/d/e/f/g	(7 parts) Source of the compiler
	lib386.uue	Source of 386 support Library
	lib68k.uue	Source of 68k general support Library
	libmffp.uue	Source of 68k MFFP support Library
	libieee.uue	Source of 68k IEEE support Library
These are 'tar'ed (except c68 binary). compressed and 'uue'ed files.
These will unpack into the following sub-directories relative to the 
directory in which they are unpacked (i.e. these need to exist):
	docs
	lib386
	lib68k
	libmffp
	libieee
	src
For more detailed installation instructions see the doc/install.doc file.

We believe that the result of all these changes will be to make c68/c386
the compiler of choice for users of the 68K and 386 versions of MINIX.
Please provide feedback to let us know if we have succeeded (and what we
can improve further). Send any feedback on this release to one (or both)
of the following:

Keith Walker	email:	kdw@oasis.icl.co.uk

Dave Walker	email:	d.j.walker.lon4905@oasis.icl.co.uk

