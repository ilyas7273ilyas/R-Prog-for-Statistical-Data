install.packages('airquality')
airquality
mean(airquality$Ozone, na.rm = T)
wind=airquality$Wind
summary(wind)
var(wind)
install.packages('fBasics')
basicStats(wind)
summary(airquality$Wind)
hist(wind, col='green', main='Histogram of Wind attribute')
d=density(wind)
plot(d, col='red')
temp=airquality$Temp
cor(temp,wind)
plot(temp,wind,xlab='temp', ylab='wind',pch=18,col='red')
reg=lm(temp~wind)
reg=lm(wind~temp)
reg
abline(reg, col='green')
data=c(51,45,33,45,67,23,43,23,43,45,56,76,74,87,56)
grps=c(rep("1",5), rep('2',5), rep('3',5))
df=data.frame(data,grps)       
df
anova=aov(lm(data~grps, data=df))
anova


result=anova(lm(data~grps, data=df))
result
factor(data)
subset(data)


sample=rnorm(n=100,mean=6,sd=2.2)
sample

data=data.frame(sample)
library(ggplot2)
ggplot(data, aes(x=sample)+
         geom_histogram(aes(y=density))+
         geom_density(density)+
         (xlab='Simulated Sample')+
         (ylab='Density'))
