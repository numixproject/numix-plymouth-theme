DESTDIR?=/usr/share
# for legacy Plymouth
# DESTDIR=/lib

install:
    mkdir -p $(DESTDIR)/plymouth/themes
    cp -r numix $(DESTDIR)/plymouth/themes
    sed -i 's|DESTDIR|$(DESTDIR)|g' $(DESTDIR)/plymouth/themes/numix/numix.plymouth

uninstall:
    rm -rf "$(DESTDIR)/plymouth/themes/numix"
