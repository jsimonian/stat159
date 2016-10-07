AdvertisingURL="http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

.PHONY: all clean

all:

data:
	curl AdvertisingURL > data/Advertising.csv

clean:
	rm report/*
