PACK := default
CONTENTS_DIR := /opt/stackstorm
PACK_DIR := $(CONTENTS_DIR)/packs

all: deploy setup

deploy:
	sudo cp -r actions/* $(PACK_DIR)/$(PACK)/actions/
	sudo cp -r bin/* /usr/local/bin/

setup:
	sudo st2ctl reload --register-actions
