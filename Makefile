.PHONY: build publish
.DEFAULT_GOAL := default

PWD := $(shell pwd)

default: build publish

build:
	@rm -rf export
	@mkdir export
	@zip -yr export/layer.zip bootstrap bin lib etc

publish:
	@$(PWD)/publish.sh
