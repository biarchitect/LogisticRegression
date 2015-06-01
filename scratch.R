rm(list=ls())
data(mtcars)
dat<-subset(mtcars,select=c(mpg,am,vs))
logr_vm<-glm(vs~mpg,data=dat,family=binomial)
