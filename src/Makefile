SRC_FOLDER=src
CV_TYPE=classic
FOLDER=$(SRC_FOLDER)/$(CV_TYPE)
SHELL=/bin/bash

# Targets
.PHONY: all cv_classic_german cv_classic_english clean

.IGNORE: cv_classic_german cv_english

# Default target: compile
all: cv_classic_german 

cv_classic_german:
	make -C $(FOLDER) cv_german
	cp $(FOLDER)/main.pdf Gnanasambandham_CV_$(CV_TYPE)_Deutsch.pdf

cv_classic_english:
	make -C $(FOLDER) cv_english
	cp $(FOLDER)/main.pdf Gnanasambandham_CV_$(CV_TYPE)_English.pdf

clean:
	make -C $(FOLDER) clean
