CV_TYPE=classic
SHELL=/bin/bash

# Targets
.PHONY: all cv_classic_german cv_classic_english clean

.IGNORE: cv_classic_german cv_english

# Default target: compile
all: cv_classic_german 

cv_classic_german:
	make -C src/classic cv_german
	cp src/classic/main.pdf Gnanasambandham_CV_classic_Deutsch.pdf

cv_classic_english:
	make -C src/classic cv_english
	cp src/classic/main.pdf Gnanasambandham_CV_classic_English.pdf

clean:
	make -C src/$(CV_TYPE) clean
