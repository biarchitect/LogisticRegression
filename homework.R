# myopURL <-"https://d396qusza40orc.cloudfront.net/logisticregression/MYOPIA.dta"
# 
# `MYOPIA-fixed` <- read.csv("C:\\Users\\s0042767\\AppData\\Local\\Temp\\RtmpisXj7H\\data477072584e5")
# myop<-read.csv("C:\\Users\\s0042767\\AppData\\Local\\Temp\\RtmpisXj7H\\data477072584e5")

x<-read.csv(file="./data/MYOPIA.csv")

library(ggplot2)

ggplot(x, aes(x=SPHEQ, y=MYOPIC)) + geom_point() + stat_smooth(method="glm", family="binomial", se=FALSE)




