INPUT ?= *.md
OUTPUT ?= presentation.html
OUTPUT_FORMAT ?= revealjs

build:
	pandoc $(INPUT) -f markdown -t $(OUTPUT_FORMAT) -s -o $(OUTPUT)
build-html:
	$(MAKE) OUTPUT_FORMAT=html
