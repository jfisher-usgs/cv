src = $(wildcard *.Rmd)

render:
	R -q -e 'rmarkdown::render('\''$(src)'\'', c('\''pdf_document'\'', '\''html_document'\''))';\

clean:
	$(RM) *.pdf;\
	$(RM) *.html;\

.PHONY : clean
