gtk+-3-stack-win
=================

This is Win32 dynamic link library (DLL) stack of gtk+3 for cross compiling on Linux.
This is contained some shell scripts that is rannable on Linux.

Builded artifacts are used for cross compiling application that based on gtk+3 and running on a Windows OS.



Environment for building
-------------------------

Requires to install packages at host environment (Linux).

* i686-w64-mingw32

* gtk+-3

  for 'gtk-update-icon-cache' tool at building 'gtk+3'

* intltool

  for building 'adwaita-icon-theme'



Usage
------

under constructing ...



Notes
------

Librarys dependencies visualization
....................................

If you want to see a visual dependency relation graph, need to install graphviz.

For exampele if you can use apt (ex; ubuntu) ;

> sudo apt-get install graphviz

So you have installed, can generate the image file;

> dot -Tpng dependency.dot -o dependency.png

If you use Ubuntu, you can view the image file by 'eog';

> eog dependency.png


Workaround of libtool's bug
............................

The gcc's flag '-static-libgcc' is ignored in building a DLL ( or may be a shared library too ),
even though it set the flag to LDFLAGS.

It seems a long standig bug; https://www.cygwin.com/ml/cygwin/2009-02/msg00231.html

So in these build-*.sh set the above flag to variable CC at configure options as a workaround of the bug,
instead of setting into the LDFLAGS.


Not included optional librarys
...............................

If you want to use JPEG or TIFF image file,
you must change these shell script to build and link following libraries.

* libjpeg-turbo (Optional for GDK-Pixbuf)
* LibTIFF (Optional for GDK-Pixbuf)
