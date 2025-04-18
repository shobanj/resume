MAIN = resume

.PHONY: all

all: pdf
	zip -9 out.zip resume.pdf

pdf: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	xelatex -interaction=nonstopmode $(MAIN).tex
	xelatex -interaction=nonstopmode $(MAIN).tex
	xelatex -interaction=nonstopmode $(MAIN).tex

clean:
	rm *.toc *.bbl *.blg *.log *.lof *.ind *.idx *.ilg *.out *.aux $(MAIN).syntec*
	rm *.xhtml *.css *.xref *.xdv ebook-epub3

clean-all:
	rm $(MAIN).pdf

.PHONY: default

default: all
