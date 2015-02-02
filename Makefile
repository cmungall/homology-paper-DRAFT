all: homology.pdf

%.tex: %.md
	pandoc $< -o $@

%.pdf: %.tex
	latex $* && latex $* && bibtext $* && latex $* && pdflatex $*
