# This top-level makefile was created to ease Debian packaging.
# It must provide targets: 'clean', 'build' and 'install'.
# The 'install' target must install files under $(DESTDIR).

.PHONY: clean build install

build:

clean:

install:
	@set -e; \
	install -d "$(DESTDIR)"; \
	cp -a usr "$(DESTDIR)/"; \
	cp -a etc "$(DESTDIR)/"; \
	rm -fR "$(DESTDIR)/usr/share/doc"; \
	\
	(cd "$(DESTDIR)/usr/share"; \
	 mv sgx-lib pvr-omap4-data; \
	 ln -s pvr-omap4-data sgx-lib); \
	\
	chmod -x "$(DESTDIR)/etc/X11/xorg.conf.d/"*.conf

# FIXME!
# - '/usr/share/sgx-lib' is hardcoded in xgles2test1.
