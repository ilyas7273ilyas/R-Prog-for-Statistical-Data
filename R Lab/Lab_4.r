#Multiple linear Regression
#Install and Load datarium package
library(datarium)
#install and Load ggplot2 package
library(ggplot2)

marketing
model1=lm(sales~youtube+facebook+newspaper, data=marketing)
model1
summary(model1)
summary(model1)$r.squared

model2=lm(sales~youtube+facebook, data=marketing)
model2

#Visualizing multiple linear regression

#Install and load car package
install.packages("car")
library(car)

library(MASS)
#install and load rgl package
install.packages("rgl")
library(rgl)

#plot1=scatter3d(sales~youtube+facebook, data=marketing)

plot2=scatter3d(marketing$youtube, marketing$facebook, marketing$newspaper)
summary(model2)
summary(model2)$r.squared


