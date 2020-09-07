rm(list=ls())
library(pyramid)
setwd("C:/Users/roysa/OneDrive/Documents/IIPS materials/Assignments/15 Sept_pop/France-pop-analysis")

#analysis of 1985 (France)

dat1985 <- read.csv("1985.csv")
#class(dat1985)
colnames(dat1985)<-c("Age_groups", "Males","Females")
attach(dat1985)
m <- Males/sum(Males) * 100
f <- Females/sum(Females) *100

z <- data.frame(m,f,Age_groups)
z
#class(dat1985$Age_groups)
pyramid(z,Llab="Males in %", Rlab="Females in %", Clab="Age groups")



#analysis of 2015 (France)

dat2015 <- read.csv("2015.csv")
dat2015

attach(dat2015)
m1 <- dat2015$Male/sum(dat2015$Male) * 100
f1 <- dat2015$Female/sum(dat2015$Female) * 100

z1 <- data.frame(m1,f1,Age_groups)
z1

pyramid(z1,Llab="Males in %", Rlab="Females in %", Clab="Age groups")
