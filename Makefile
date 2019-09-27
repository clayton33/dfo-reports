report=myreport

$(report).pdf: $(report).tex
	latexmk -pdf -bibtex $<
