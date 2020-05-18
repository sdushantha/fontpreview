PREFIX?=	/usr
BINDIR=		${PREFIX}/bin

all:
	@echo Run \'make install\' to install fontpreview on your device

install:
	@mkdir -p $(DESTDIR)$(BINDIR)
	@cp fontpreview $(DESTDIR)$(BINDIR)/fontpreview
	@chmod 755 $(DESTDIR)$(BINDIR)/fontpreview
	@echo fontpreview has been installed on your device

uninstall:
	@rm -rf $(DESTDIR)$(BINDIR)/fontpreview
	@rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(BINDIR)
	@echo fontpreview has been removed from your device
