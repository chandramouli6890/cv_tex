PAPER=main
SHELL=/bin/bash

# Targets
.PHONY: all cv_german cv_english clean watch

.IGNORE: cv_german cv_english

# Default target: compile
all: cv_german 

cv_german:
	echo "\newboolean{GERMAN_CV}\setboolean{GERMAN_CV}{true}" > language_config.tex
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER) & bibtex $(PAPER)& pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER)
	rm language_config.tex

cv_english:
	echo "\newboolean{GERMAN_CV}\setboolean{GERMAN_CV}{false}" > language_config.tex
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER) & bibtex $(PAPER)& pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER)
	rm language_config.tex

anschreiben:
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode anschreiben && bibtex anschreiben && pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode anschreiben

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
