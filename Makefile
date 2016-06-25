# This Makefile relies on LaTeX-Mk
# See: http://latex-mk.sourceforge.net/

NAME=fast

KNITR=$(wildcard sections/*.Rnw)
KNITR_TEX=$(KNITR:.Rnw=.tex)
KNITR_TEX=$(patsubst sections/%.Rnw,gen/%.tex,$(KNITR))
TEXSRCS=$(NAME).tex $(wildcard sections/*.tex) $(KNITR_TEX)
USE_PDFLATEX=true
BIBTEXSRCS=references.bib

CLEAN_FILES+=$(wildcard *.synctex.gz) $(wildcard *.fdb_latexmk) \
	$(wildcard *.fls) $(KNITR_TEX)
GV=@open -a Skim.app $(NAME).pdf

gen/%.tex: sections/%.Rnw gen scripts/*.R
	scripts/knit.R $< $@

# We are going to try a couple of standard locations to find LaTeX-Mk:
-include ~/.local/share/latex-mk/latex.gmk
-include /usr/local/share/latex-mk/latex.gmk
-include /opt/local/share/latex-mk/latex.gmk
-include /usr/share/latex-mk/latex.gmk

gen:
	-mkdir gen

open:
	mate $(TEXSRCS)

clobber: clean
	rm -Rf gen cache figures $(wildcard *-tikzDictionary) \
	       $(wildcard sections/*-tikzDictionary)
