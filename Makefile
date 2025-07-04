TWOCOLUMN = \\\\documentclass[twocolumn]{miniclass}
ONECOLUMN = \\\\documentclass[onecolumn]{miniclass}

build:
	pdflatex mini_template.tex; bibtex mini_template; pdflatex mini_template.tex; pdflatex mini_template.tex

release:
	sed -i "1s/.*/${TWOCOLUMN}/" mini_template.tex
	pdflatex mini_template.tex
	bibtex mini_template
	pdflatex mini_template.tex
	pdflatex mini_template.tex
	convert mini_template.pdf -background white -alpha remove -alpha off screenshots/mini_template_twocolumn.png
	sed -i "1s/.*/${ONECOLUMN}/" mini_template.tex
	pdflatex mini_template.tex
	bibtex mini_template
	pdflatex mini_template.tex
	pdflatex mini_template.tex
	convert mini_template.pdf -background white -alpha remove -alpha off screenshots/mini_template_onecolumn.png
	sed -i "1s/.*/${TWOCOLUMN}/" mini_template.tex
	rm screenshots/mini_template_onecolumn-1.png
	rm screenshots/mini_template_twocolumn-1.png

