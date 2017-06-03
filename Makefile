.PHONY: FORCE_MAKE

all: phil479-screen.pdf

print: phil479-print.pdf

%.pdf: %.tex olprevision.tex FORCE_MAKE
	latexmk -dvi- -ps- -pdf $<

olprevision.tex: FORCE_MAKE
	grep shash ../../.git/gitHeadInfo.gin |sed 's/[^{]*{\([^}]*\)},/\1/' > olprevision.tex
	grep authsdate ../../.git/gitHeadInfo.gin |sed 's/[^{]*{\([^}]*\)},/(\1)./' >> olprevision.tex
