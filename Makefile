all: update
boot: init update

.PHONY: install
init:
	bash -x init.sh

.PHONY: update
update:
	bash -x update.sh
