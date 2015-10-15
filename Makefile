PREFIX ?= ~/.local

binary_path = $(shell readlink -m './bin')
binaries = $(shell ls $(binary_path))
library_path = $(shell readlink -m './lib')
libraries = $(shell ls $(library_path))
awk_path = $(shell readlink -m './awk')
awk_files = $(shell ls $(awk_path))

default: usage
usage:
	@echo 'Usage:'
	@echo 'make <install|uninstall|reinstall|build-documentation>'
reinstall: uninstall install
install:
	@echo 'Installing binaries'
	@for binary in $(binaries); do \
		echo $$binary; \
		mkdir -p $(PREFIX)/bin; \
		cp $(binary_path)/$$binary $(PREFIX)/bin/$$binary; \
	done
	@echo 'Installing libraries'
	@for library in $(libraries); do \
		echo $$library; \
		mkdir -p $(PREFIX)/lib; \
		cp -r $(library_path)/$$library $(PREFIX)/lib/$$library; \
	done
	@echo 'Installing awk files'
	@for awk in $(awk_files); do \
		echo $$awk; \
		mkdir -p $(PREFIX)/awk; \
		cp -r $(awk_path)/$$awk $(PREFIX)/awk/$$awk; \
	done
uninstall:
	@echo 'Uninstalling binaries'
	@for binary in $(binaries); do \
		echo $$binary; \
		rm $(PREFIX)/bin/$$binary; \
	done
	@echo 'Uninstalling libraries'
	@for library in $(libraries); do \
		echo $$library; \
		rm -r $(PREFIX)/lib/$$library; \
	done
	@echo 'Uninstalling awk files'
	@for awk in $(awk_files); do \
		echo $$awk; \
		rm -r $(PREFIX)/awk/$$awk; \
	done
build-documentation:
	echo 'To be implemented'
