export DOTPATH ?= $(shell echo ~/dotfiles)

PHONY: all boot
all: update
boot: init update

.PHONY: install
init:
	bash init.sh

.PHONY: update
update:
	bash update.sh
