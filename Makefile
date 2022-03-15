.PHONY: all
all: mitschrift.pdf

mitschrift.tex: *.brik *.mbrik math_template
	texbrix --template math_template mitschrift.brik

%.pdf: %.tex
	xelatex $<

clean:
	rm -rf *.aux *.bbl *.bcf *.blg *.log *.out *.pdf *.run.xml *.tdo *.tex *.toc
