#!/bin/bash


# make pdf and compile bib
pdflatex -output-directory=build -interaction=nonstopmode pre-tese
bibtex pre-tese
pdflatex -output-directory=build -interaction=nonstopmode pre-tese
pdflatex -output-directory=build -interaction=nonstopmode pre-tese


# make pdf
# latexmk -pdf -auxdir=./build pre-tese.tex

