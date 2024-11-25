# LaTeX Makefile v0.33 -- LaTeX only

# set the path to your TeX file here
PAPER=Gnanasambandham_CV
SHELL=/bin/bash

# Targets
.PHONY: all cv_german cv_english clean watch

# Default target: compile
all: cv_german 

cv_german:  ## Compile paper
	echo "\newboolean{GERMAN_CV}\setboolean{GERMAN_CV}{true}" > language_config.tex
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER) & bibtex $(PAPER)& pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER)
	#rubber --pdf $(PAPER).tex

cv_english:  ## Compile paper
	echo "\newboolean{GERMAN_CV}\setboolean{GERMAN_CV}{false}" > language_config.tex
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER) & bibtex $(PAPER)& pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER)
	#rubber --pdf $(PAPER).tex

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
