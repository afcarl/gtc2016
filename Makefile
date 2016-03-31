all: S6116_FredericBastien.pdf S6845_FredericBastien.pdf

S6845_FredericBastien.pdf: S6845_FredericBastien.tex
	pdflatex S6845_FredericBastien.tex
	pdflatex S6845_FredericBastien.tex

S6116_FredericBastien.pdf: S6116_FredericBastien.tex
	pdflatex S6116_FredericBastien.tex
	pdflatex S6116_FredericBastien.tex

clean:
	rm *.toc *.snm *.aux *.log *.nav *.out *.vrb

lab.zip: notebook/*.py notebook/*.ipynb notebook/mnist.pkl.gz
	zip -r lab.zip notebook/*.py notebook/*.ipynb notebook/mnist.pkl.gz
