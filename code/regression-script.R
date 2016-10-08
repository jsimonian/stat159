setwd("../data")
advertising <- read.csv(file="Advertising.csv",head=TRUE,sep=",")

TV_data = advertising$TV
Sales_data = advertising$Sales

model = lm(formula = Sales ~ TV, data = advertising)

model_summary = summary(model)

save(model_summary, file = "regression.RData")

setwd("../images")

plot(advertising$TV, 
     advertising$Sales, 
     main = "Effect of TV Advertising on Sales", 
     xlab = "TV Advertising Budget", 
     ylab = "Sales",
     pch = 20)

abline(model, col="red")

dev.copy(png,'scatterplot-tv-sales.png')
dev.off()

dev.copy(pdf,'scatterplot-tv-sales.pdf')
dev.off()