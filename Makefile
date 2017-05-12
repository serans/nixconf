CURRDIR=$(shell pwd)
CFGDIR=$(CURRDIR)/config

conf_files:=$(shell find $(CFGDIR) -type f -printf "%f\n")

.PHONY: all update install

all: update install

update:
	@echo "Updating"

	[ -z "`git status --porcelain 2>&1`" ] # Check that all changes have been committed
	git fetch origin $(branch)             # Get remote commits
	git diff --quiet                       # Check that all commits have been pushed to the remote repository


install:
	@echo "Installing files in $(HOME)"

	for file in $(conf_files); do \
		if [ -L $(HOME)/$$file ]; then unlink $(HOME)/$$file; fi; \
		if [ -f $(HOME)/$$file ]; then mv $(HOME)/$$file $(HOME)/$$file.old; fi; \
		ln -s $(CFGDIR)/$$file $(HOME)/$$file; \
	done
