export DOTPATH ?= $(shell echo ~/dotfiles)

all: update
boot: init update

.PHONY: install
init:
	bash init.sh

.PHONY: update
update:
	bash update.sh
