libname=glib-networking-2.48.2
filename=${libname}.tar.xz
url=http://ftp.gnome.org/pub/GNOME/sources/glib-networking/2.48/${filename}

configure() {
	./configure ${configure_flags} \
		--with-libproxy \
		--without-gnome-proxy \
		--with-gnutls \
		--without-ca-certificates \
		--without-pkcs11
}

