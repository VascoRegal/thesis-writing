#!/bin/bash


rm -rf build
mkdir -p build

# make pdf and compile bib
pdflatex -output-directory=build -interaction=nonstopmode pre-tese
cp ./* build
cd build
bibtex pre-tese
pdflatex -interaction=nonstopmode pre-tese
pdflatex -interaction=nonstopmode pre-tese
cd ..
cp build/pre-tese.pdf pre-tese.pdf

# make pdf
# latexmk -pdf -auxdir=./build pre-tese.tex

