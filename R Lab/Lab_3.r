# Install and Load ggplot package
install.packages("ggplot2")
# Install and Load moments package
install.packages("moments")
library(moments)

#Problem 1
time=c(10.09,15.55,17.49,17.33,15.15,21.27,25.24,21.05,21.55,20.42,22.51,15.51,22.04,22.59,24.25)
time
hist(time,col = "red")

d=density(time)
plot(d)

sk1=skewness(time)
sk1
if(sk1<0) print("Negative Skewness") else if(sk1>0) print("Positive Skewness") else print("No Skewness")

ku1=kurtosis(time)
ku1
if(ku1<3) print("Playkutric") else if(ku1>3) print("leptokurtic") else print("Mesokurtic")

#Problem 2
n.sample=rnorm(n=10000, mean=55, sd=4.5)
n.sample
sk2=skewness(n.sample)
sk2
if(sk2<0) print("Negative Skewness") else if(sk2>0) print("Positive Skewness") else print("No Skewness")

ku2=kurtosis(n.sample)
ku2
if(ku2<3) print("Playkutric") else if(ku2>3) print("leptokurtic") else print("Mesokurtic")

data=data.frame(n.sample)
data
ggplot(data,aes(x=n.sample), binwidth=50)+
  geom_histogram(aes(y=..density..), fill="red", alpha=0.5)+
  geom_density(colour='blue')+
  xlab(expression(bold('Simulated Samples')))+
  ylab(expression(bold('Density')))

#Correlation and Simple linear Regression
# Install and Load datarium package
install.packages("datarium")
library("datarium")
datarium
marketing
# Install and Load ggplot package
library(ggplot2)


marketing
spearman_cor=cor(marketing$sales, marketing$youtube, method="spearman") #Spearman Correlation
spearman_cor

kendall_cor=cor(marketing$sales, marketing$youtube)  #karl-pearson correlation
kendall_cor

kendall_cor_d=cor(marketing$sales, marketing$youtube, method='kendall')  #Kendall rank correlation
kendall_cor_d

kar_pearson_cor=cor(marketing$sales, marketing$youtube, method='pearson') #karl-pearson correlation
kar_pearson_cor

#Linear Regression MOdel
model=lm(sales~youtube, data = marketing)  
model

#Regression line 
ggplot(marketing, aes(youtube, sales)) + geom_point() + stat_smooth(method=lm)
summary(model)
summary(model)$r.squared


ggplot(data=marketing, aes(x=youtube, y=sales)) +
  geom_point(alpha=0.5, color='red') +
  stat_smooth(method=lm)

ggplot(data=marketing, aes(x=youtube, y=sales)) +
  geom_boxplot(alpha=0.5, color='red') +
  stat_smooth(method=lm)

ggplot(data=marketing, aes(x=youtube, y=sales)) +
  geom_boxplot(alpha=0.5, color='green') +
  geom_jitter(aplha=1, color="tomato") +
  stat_smooth(method=lm)
  
  
ggplot(data=marketing, aes(x=youtube, y=sales)) +
  geom_jitter(aplha=1, color="tomato") +
  stat_smooth(method=lm)

ggplot(data=marketing, aes(x=youtube, y=sales)) +
  geom_line(alpha=0.5, color='red') +
  stat_smooth(method=lm)
