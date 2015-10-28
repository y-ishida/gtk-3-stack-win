#!/bin/sh -e

echo compile Pango ...

build_dir=${PWD}/build

libname=pango-1.38.1
filename=${libname}.tar.xz
url=http://ftp.gnome.org/pub/gnome/sources/pango/1.38/${filename}

if ! [ -e ${filename} ]; then
	wget -O ${filename} ${url}
	tar xvf ${filename}
fi

cd ${libname}

./configure --host=i686-w64-mingw32 \
	--prefix=${build_dir} PKG_CONFIG_PATH= PKG_CONFIG_LIBDIR=${build_dir}/lib/pkgconfig \
	--includedir=${build_dir}/include \
	CC="i686-w64-mingw32-gcc -static-libgcc" \
	CPPFLAGS="-I${build_dir}/include" \
	LDFLAGS="-L${build_dir}/lib" \
	--enable-shared

make clean
make
make install

