.PHONY: FORCE_MAKE

all: phil479-screen.pdf

%.pdf: %.tex FORCE_MAKE
	latexmk -dvi- -ps- -pdf $<
