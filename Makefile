INPUT ?= *.md
OUTPUT_FILENAME ?= presentation
OUTPUT ?= $(OUTPUT_FILENAME).html
OUTPUT_FORMAT ?= revealjs

presentation:
	pandoc $(INPUT) -f markdown -t $(OUTPUT_FORMAT) -s -o $(OUTPUT)

notes:
	$(MAKE) OUTPUT_FORMAT=html OUTPUT_FILENAME=notes

both: presentation notes
