cv : cv.Rmd
	R -q -e 'rmarkdown::render('\''cv.Rmd'\'', c('\''pdf_document'\'', '\''html_document'\''))';\

clean:
	$(RM) cv.pdf;\
	$(RM) cv.html;\
	$(RM) cv.md;\

.PHONY : clean
