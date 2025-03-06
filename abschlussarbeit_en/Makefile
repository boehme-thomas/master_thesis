# Makefile for generation of the thesis

THESIS  = thesis

# If your thesis consists of multiple .tex files,
# add them to the dependency list of $(THESIS).aus!

# no changes below!

SRC     = $(THESIS).tex
PDF     = $(SRC:%.tex=%.pdf)
DVI	= $(SRC:%.tex=%.dvi)


.PHONY: all
all: dvi pdf

.PHONY: dvi
dvi: $(THESIS).dvi

.PHONZ: pdf
pdf: $(THESIS).pdf

$(THESIS).dvi: $(THESIS).aux $(THESIS).bbl
	latex $(THESIS)
	latex $(THESIS)


$(THESIS).pdf: $(THESIS).aux $(THESIS).bbl
	pdflatex $(THESIS)
	pdflatex $(THESIS)


$(THESIS).aux: $(THESIS).tex $(THESIS).bib
	latex $(THESIS)


$(THESIS).bbl: $(THESIS).aux $(THESIS).bib
	bibtex $(THESIS)


.PHONY: clean
clean:
	$(RM) *.aux *.bbl *.blg *.log *.lof *.lot *.out *.toc *~


.PHONY: allclean
allclean: clean
	$(RM) $(DVI) $(PDF)
