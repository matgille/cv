full: 
	java -jar saxon9he.jar -o:.tmp cv.xml xsl/cv.xsl
	java -jar saxon9he.jar -o:.tmp cv_court.xml xsl/cv_court.xsl
	
	mv francais/long/cv_fr.tex .
	mv francais/long/ru* .
	pdflatex cv_fr.tex
	pdflatex cv_fr.tex
	mv ru* francais/long/tex
	mv cv_fr.tex francais/long/tex
	mv cv_fr.pdf francais/long/CV.pdf
	mv cv_fr.* francais/long/aux
	
	mv anglais/long/cv_en.tex .
	mv anglais/long/ru* .
	pdflatex cv_en.tex
	pdflatex cv_en.tex
	mv ru* anglais/long/tex
	mv cv_en.tex anglais/long/tex
	mv cv_en.pdf anglais/long/CV.pdf
	mv cv_en.* anglais/long/aux
	
	mv francais/short/cv_short_fr.tex .
	mv francais/short/ru* .
	pdflatex cv_short_fr.tex
	pdflatex cv_short_fr.tex
	mv ru* francais/short/tex
	mv cv_short_fr.tex francais/short/tex
	mv cv_short_fr.pdf francais/short/CV.pdf
	mv cv_short_fr.* francais/short/aux
	
	mv anglais/short/cv_short_en.tex .
	mv anglais/short/ru* .
	pdflatex cv_short_en.tex
	pdflatex cv_short_en.tex
	mv ru* anglais/short/tex
	mv cv_short_en.tex anglais/short/tex
	mv cv_short_en.pdf anglais/short/CV.pdf
	mv cv_short_en.* anglais/short/aux
	evince */*/CV*.pdf


french: 
	java -jar saxon9he.jar  cv.xml xsl/cv.xsl
	java -jar saxon9he.jar  cv_court.xml xsl/cv_court.xsl
	
	mv francais/long/cv_fr.tex .
	mv francais/long/liste_travaux.tex .
	mv francais/long/ru* .
	pdflatex cv_fr.tex
	pdflatex cv_fr.tex
	pdflatex liste_travaux.tex
	pdflatex liste_travaux.tex
	mv ru* francais/long/tex
	mv cv_fr.tex francais/long/tex
	mv liste_travaux.tex francais/long/tex
	mv cv_fr.pdf francais/long/CV.pdf
	mv liste_travaux.pdf francais/long/
	mv cv_fr.* francais/long/aux
	mv liste_travaux.* francais/long/aux

	



pousser: 
	pousser_ftp.sh
