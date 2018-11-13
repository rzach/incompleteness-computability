.PHONY: FORCE_MAKE

all: phil479-screen.pdf phil479-print.pdf

print: phil479-print.pdf

%.pdf: %.tex olprevision.tex FORCE_MAKE
	latexmk -dvi- -ps- -pdf $<

index.html: README.md  webpage-template.html phil479-screen.pdf
	convert phil479-screen.pdf[0] phil479.png
	pandoc --template webpage-template.html -f markdown -t html -o index.html README.md

olprevision.tex: FORCE_MAKE
	grep shash ../../.git/gitHeadInfo.gin |sed 's/[^{]*{\([^}]*\)},/\1/' > olprevision.tex
	grep authsdate ../../.git/gitHeadInfo.gin |sed 's/[^{]*{\([^}]*\)},/(\1)./' >> olprevision.tex
