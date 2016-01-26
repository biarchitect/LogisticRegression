# myopURL <-"https://d396qusza40orc.cloudfront.net/logisticregression/MYOPIA.dta"
# 
# `MYOPIA-fixed` <- read.csv("C:\\Users\\s0042767\\AppData\\Local\\Temp\\RtmpisXj7H\\data477072584e5")
# myop<-read.csv("C:\\Users\\s0042767\\AppData\\Local\\Temp\\RtmpisXj7H\\data477072584e5")

x<-read.csv(file="./data/MYOPIA.csv")

library(ggplot2)

ggplot(x, aes(x=SPHEQ, y=MYOPIC)) + geom_point() + stat_smooth(method="glm", family="binomial", se=FALSE)

#Home1.2

icu<-read.csv(file="./data/icu.csv")
str(icu)
class(icu)
ggplot(icu, aes(x=AGE, y=STA)) + geom_point() + stat_smooth(method="glm", family="binomial", se=FALSE)
curve(predict(icu, data.frame(AGE=x), type="response"), add=TRUE)

