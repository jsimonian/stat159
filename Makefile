.PHONY: all data clean lab9

all: report/report.pdf report/report.html eda-output.txt regression.RData lab9

lab9: lab9/lab9.pdf

lab9/lab9.pdf: lab9/lab9.Rnw
	cd lab9; R CMD Sweave --pdf lab9.Rnw

lab9/lab9.Rnw: data/regression.RData images/scatterplot-tv-sales.png

report/report.pdf: report/report.Rmd
	pandoc report/report.Rmd -s -o report/report.pdf

report/report.html: report/report.Rmd
	pandoc report/report.Rmd -s -o report/report.html

report/report.Rmd: data/regression.RData images/scatterplot-tv-sales.png

data/eda-output.txt: code/eda-script.R data/Advertising.csv
	Rscript code/eda-script.R

data/regression.RData: code/regression-script.R data/Advertising.csv
	Rscript code/regression-script.R

data/Advertising.csv: data

data:
	curl "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv" > data/Advertising.csv

clean:
	rm report/report.pdf; rm report/report.html
