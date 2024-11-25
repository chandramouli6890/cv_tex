# LaTeX Makefile v0.33 -- LaTeX only

# set the path to your TeX file here
PAPER=Gnanasambandham_CV
SHELL=/bin/bash

all:  ## Compile paper
	pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER) & bibtex $(PAPER)& pdflatex -synctex=1 -shell-escape -src-specials --interaction=nonstopmode $(PAPER)
	#rubber --pdf $(PAPER).tex

watch:  ## Recompile on updates to the source file
	@while [ true ]; do inotifywait $(PAPER).tex; sleep 0.01; make all; done
