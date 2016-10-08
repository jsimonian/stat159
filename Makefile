AdvertisingURL="http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

.PHONY: all data clean

all:

report.pdf:

report.html:

eda-output.txt:

regression.RData:

data:
	curl AdvertisingURL > data/Advertising.csv

clean:
	rm report/*
