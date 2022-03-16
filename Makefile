.PHONY: all
all: mitschrift.pdf

%.tex: *.brik *.mbrik math_template
	texbrix --template math_template $(basename $@).brik

%.pdf: %.tex
	xelatex $<

clean:
	rm -rf *.aux *.bbl *.bcf *.blg *.log *.out *.pdf *.run.xml *.tdo *.tex *.toc
