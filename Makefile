export DOTPATH ?= $(shell echo ~/dotfiles)

.PHONY: all boot
all: update
boot: init update

.PHONY: install
init:
	bash init.sh

.PHONY: update
update:
	bash update.sh

.PHONY: ssh
ssh:
	echo "Sync ssh authorized_keys"
	mkdir -p ~/.ssh
	curl https://github.com/sarisia.keys > ~/.ssh/authorized_keys
