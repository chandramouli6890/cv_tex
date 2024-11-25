PAPER=main
SHELL=/bin/bash

# Targets
.PHONY: all cv_german cv_english clean watch

.IGNORE: cv_german cv_english

# Default target: compile
all: cv_german 

cv_german:  ## Compile paper
	echo "\newboolean{GERMAN_CV}\setboolean{GERMAN_CV}{true}" > language_config.tex
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER) & bibtex $(PAPER)& pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER)
	rm language_config.tex
	cp $(PAPER).pdf Gnanasambandham_CV_Deutsch.pdf

cv_english:  ## Compile paper
	echo "\newboolean{GERMAN_CV}\setboolean{GERMAN_CV}{false}" > language_config.tex
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER) & bibtex $(PAPER)& pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER)
	rm language_config.tex
	cp $(PAPER).pdf Gnanasambandham_CV_english.pdf

clean: 
	rm -rf $(PAPER).aux
	rm -rf $(PAPER).fdb_latexmk
	rm -rf $(PAPER).fls
	rm -rf $(PAPER).log
	rm -rf $(PAPER).out
	rm -rf $(PAPER).pdf
	rm -rf $(PAPER).synctex.gz

watch:  ## Recompile on updates to the source file
	@while [ true ]; do inotifywait $(PAPER).tex; sleep 0.01; make all; done
