.PHONY: all
all: mitschrift.pdf

%.tex: *.brik *.mbrik math_template
	texbrix --template math_template $(basename $@).brik

# Once xelatex works with icu-71, change pdflatex to xelatex again
%.pdf: %.tex
	xelatex $< && xelatex $<

clean:
	rm -rf *.aux *.bbl *.bcf *.blg *.log *.out *.pdf *.run.xml *.tdo *.tex *.toc
