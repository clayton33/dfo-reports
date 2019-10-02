report=myreport

$(report).pdf: $(report).tex
	latexmk -pdf -bibtex $<

%.tex : %.Rnw
	R -e 'Sweave("$<")'
