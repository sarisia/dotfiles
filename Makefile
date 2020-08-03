all: update
boot: init update

.PHONY: install
init:
	. init.sh

.PHONY: update
update:
	. update.sh
