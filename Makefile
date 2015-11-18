DESTDIR?=

install_fedora:
	sed -i 's|/lib/plymouth|/usr/share/plymouth|g' numix/numix.plymouth
	mkdir -p $(DESTDIR)/usr/share/plymouth/themes
	cp -r numix $(DESTDIR)/usr/share/plymouth/themes

uninstall_fedora:
	rm -rf $(DESTDIR)/usr/share/plymouth/themes/numix
