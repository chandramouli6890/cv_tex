PAPER=main
SHELL=/bin/bash

# Targets
.PHONY: all cv_noprofilephoto clean

.IGNORE: cv_noprofilephoto

# Default target: compile
all: cv_noprofilephoto

cv_noprofilephoto:
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER) && bibtex $(PAPER) && pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER)

coverletter:
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode coverletter && bibtex coverletter && pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode coverletter

clean: 
	rm -rf $(PAPER).aux
	rm -rf $(PAPER).fdb_latexmk
	rm -rf $(PAPER).fls
	rm -rf $(PAPER).log
	rm -rf $(PAPER).out
	rm -rf $(PAPER).pdf
	rm -rf $(PAPER).synctex.gz
	rm -rf $(PAPER).bbl
	rm -rf $(PAPER).blg
	rm -rf texput.log

# watch:  ## Recompile on updates to the source file
# 	@while [ true ]; do inotifywait $(PAPER).tex; sleep 0.01; make all; done
