cv : cv.Rmd
	R -q -e 'rmarkdown::render('\''cv.Rmd'\'', c('\''pdf_document'\'', '\''html_document'\''))';\
	R -q -e 'rmarkdown::render('\''cv.Rmd'\'', rmarkdown::md_document(variant='\''gfm'\''))';\

clean:
	$(RM) cv.pdf;\
	$(RM) cv.html;\
	$(RM) cv.md;\

.PHONY : clean
