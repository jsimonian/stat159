setwd("../data")
advertising <- read.csv(file="Advertising.csv",head=TRUE,sep=",")
TV_data = advertising$TV
Sales_data = advertising$Sales

setwd("../images")

hist(TV_data, 
     main="TV Advertising by Market", 
     xlab="Budget ($1,000)",
     border="black", 
     col="blue",
     las=1)

dev.copy(png,'histogram-tv.png')
dev.off()
dev.copy(pdf,'histogram-tv.pdf')
dev.off()

hist(Sales_data, 
     main="Sales by Market", 
     xlab="Sales (1,000 units)",
     border="black", 
     col="red",
     las=1)

dev.copy(png,'histogram-sales.png')
dev.off()
dev.copy(pdf,'histogram-sales.pdf')
dev.off()

setwd("../data")

sink("eda-output.txt")
"TV Advertising Summary:"
summary(TV_data)
"Unit Sales Summary:"
summary(Sales_data)
sink()

