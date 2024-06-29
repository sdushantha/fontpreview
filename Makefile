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

local_install:
	@read -p "Local binaries path: " lbin_path && ln -sf $$(pwd)/fontpreview $$lbin_path
	@echo fontpreview has been locally installed on your device

local_uninstall:
	@read -p "Local binaries path: " lbin_path && rm -f $$lbin_path/fontpreview
	@echo fontpreview has been locally uninstalled from your device
