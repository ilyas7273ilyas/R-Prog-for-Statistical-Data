mydata=read.csv("C:/Users/ilyas/Desktop/R/Health_data.csv")
mydata
summary(mydata)

summary(mydata,AGE)

example1=mean(mydata$AGE)
example1

example2=mydata[2,4]
example2

example3=max(mydata$AGE)
example3

example4=min(mydata$AGE)
example4

range=example3-example4
range

example6=boxplot(mydata$AGE,main="Heading ", horizontal=T, xlab="Age in x-axis", ylab="Age in y-axis", col = "red")

example7=factor(mydata$AGE)
example7

example8=factor(mydata$GENDER)
example8

example9=quantile(mydata$AGE)
example9

example10=quantile(mydata$AGE, 0.25)
example10

#example11=table(mydata)

examp=table(mydata$GENDER)
examp

example13=table(mydata$GENDER,mydata$Exercise)
example13

example14=subset(mydata,mydata$GENDER=='M')
example14

example15=subset(mydata,mydata$GENDER=="F")
example15

example12=subset(mydata$AGE,mydata$GENDER=='M')
example12

plot(mydata$AGE,type = "h", main = "Age of Respondents", xlab = "Respondents", ylab = "Age in years", col="red")

hist(mydata$AGE, main="Graph of Age", xlab="Age in years", ylab="Frequency", col = "blue", border = "red")

example16=table(mydata$AGE)
pie(example16, main="Age", radius=0.8,col = "gray",border = "red", clockwise = "true" )

boxplot(mydata$WEIGHT, horizontal = T,col = "red" )

boxplot(mydata$AGE, main="Plot of Age", notch=T, varwidth =T,horizontal = T, col = "gray", border ="red" )

boxplot(mydata$AGE, mydata$HEIGHT, mydata$WEIGHT, mydata$BMI, names=c("Age","Height","Weight","BMI"), horizontal = T, notch = T, varwidth = T, col=c("red","blue","yellow","green"))

