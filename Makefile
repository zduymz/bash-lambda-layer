.PHONY: build publish
.DEFAULT_GOAL := default

PWD := $(shell pwd)

build:
	@rm -rf export
	@mkdir export
	@zip -yr export/layer.zip bootstrap bin lib

publish:
	@$(PWD)/publish.sh
