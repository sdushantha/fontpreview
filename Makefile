DEST ?= /usr/bin

all:
	@echo Run \'make install\' to install fontpreview on your device

install:
	@cp fontpreview $(DEST)/fontpreview
	@chmod 755 $(DEST)/fontpreview
	@echo fontpreview has been installed on your device

uninstall:
	@rm -rf $(DEST)/fontpreview
	@echo fontpreview has been removed from your device
