# Week 5
# Testing of sample mean and population mean
# Problem 1
xbar=9900
mu=10000
sigma=120
n=30
t_s=(xbar-mu)/(sigma/sqrt(n))
t_s
z=abs(t_s)
z
alpha=0.05
zalpha=qnorm(1-alpha)
zalpha
ifelse(z > zalpha,"reject","accept")    #Same as Conditional Operator

x=seq(-5,5,length=500)
x
y=dnorm(x,mean=0 ,sd=1)
y
plot(x,y,type= "l")	
x=seq(z,5,length=100)
x
y=dnorm(x,mean=0,sd=1)
y
polygon(c(z,x,5),c(0,y,0),col="red")
val=pnorm(z)
val
pval=1-val
pval
ifelse(pval < alpha,"reject","accept")

# Problem 2
xbar=2.1
mu=2
sigma=0.25
n=35
t_s=(xbar-mu)/(sigma/sqrt(n))
t_s
z=abs(t_s)
z
alpha=0.05
zalpha=qnorm(1-alpha)
zalpha

ifelse(z > zalpha,"reject","accept")
x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

val=pnorm(z)
val
pval=1-val
pval
ifelse(pval < alpha,"reject","accept")

# Problem 3
xbar=14.6
mu=15.4
sigma=2.5
n=35
t_s=(xbar-mu)/(sigma/sqrt(n))
t_s
z=abs(t_s)
z
alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z > zhalfalpha,"reject","accept")
val=1-pnorm(z)
val
pval=2*val
round(pval,2)
ifelse(pval < alpha,"reject","accept")


# Extra Problem 1
# The mean lifetime of a sample of 100 light tubes produced by a 
# company is found to be 1580 hours with S.D. of 90 hours. Test 
# the hypothesis that the mean lifetime of the tubes produced by
# the company is 1600 hours.
# Given n=100, xbar=1580 hours, mu=1600, alpha=0.05, s=90
# Ho : mu=1600, H1=mu!= 1600 (Two tailed Test)

xbar=1580
mu=1600
s=90
n=100
t_s=(xbar-mu)/(s/sqrt(n))
t_s
z=abs(t_s)
z
alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z > zhalfalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

pval=pnorm(z,lower.tail=F)
Tpval=2*pval
Tpval
round(Tpval,2)
ifelse(Tpval < alpha,"reject","accept")


# Extra Problem 2
# The mean breaking strength of the cables supplied by a manufacturer
# is 1800 with a S.D of 100. By a new technique in the manufacturing
# process, it is claimed that the breaking strength of the cable has
# increased. To test this claim a sample of 50 cables is tested and 
# is found that the mean breaking strength is 1850. Can we support the 
# claim at 1% L.O.S.

# Given n=50, xbar=1850, mu=1800, sigma=100, L.O.S=0.01
# Ho:mu <=1800, H1;mu > 1800 (One tailed Test)

xbar=1850
mu=1800
sigma=100
n=50
t_s=(xbar-mu)/(sigma/sqrt(n))
t_s
z=abs(t_s)
z
alpha=0.01
zalpha=qnorm(1-alpha)
zalpha
ifelse(z > zalpha,"reject","accept")

x=seq(-4,4,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,4,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,4),c(0,y,0),col="red")

pval=pnorm(z,lower.tail=F)
pval
round(pval,2)
ifelse(pval < alpha,"reject","accept")


#Testing of sample and population proposition
#Problem 1

p=85/148
P=60/100
n=148
Q=1-P
t_s=(p-P)/sqrt((P*Q)/n)
t_s
z=abs(t_s)
z
alpha=0.05
zalpha=qnorm(1-alpha)
zalpha
ifelse(z > zalpha,"reject","accept")

#val=pnorm(z,lower.tail=F)
#val
#ifelse(val < alpha,"reject","accept")

val=pnorm(z)
val
pval=1-val
pval
ifelse(pval < alpha,"reject","accept")

# Problem 2
p=30/214
P=12/100
Q=1-P
n=214
t_s=(p-P)/sqrt(P*Q/n)
t_s
z=abs(t_s)
z
alpha=0.05
zalpha=qnorm(1-alpha)
zalpha
ifelse(z > zalpha,"reject","accept")

pval=pnorm(z,lower.tail=FALSE)
pval
ifelse(pval < alpha,"reject","accept")

# Problem 3
p=12/30
P=1/2
n=30
Q=1-P
z=abs((p-P)/sqrt((P*Q)/n))
z
alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z > zhalfalpha,"reject","accept")

pval=2*pnorm(z,lower.tail=FALSE)
pval
ifelse(pval < alpha,"reject","accept")

# Extra Problem 1
# A die is thrown 9000 times and throw of 3 or 4 is observed 3240
# times. Show that the die cannot be regarded as an unbiased one 
# using 5% L.O.S.

# Given n=9000, p=3240/9000, P=Probability(3 or 4)=P(3)+P(4)=1/6 + 1/6 =1/3
# alpha=0.05
# Ho: P = 1/3, H1: P != 1/3 (Two tailed Test)

p=3240/9000
P=1/3
n=9000
Q=1-P
t_s=(p-P)/sqrt((P*Q)/n)
t_s
z=abs(t_s)
z
alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z > zhalfalpha,"reject","accept")

x=seq(-6,6,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,6,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,6),c(0,y,0),col="red")

pval=2*pnorm(z,lower.tail=FALSE)
pval
ifelse(pval < alpha,"reject","accept")


# Extra Problem 2
# 40 people were attacked by a disease and only 36 survied. Will
# you reject the hypothesis that the survival rate, if attacked 
# by this disease, is 85% in favour of the hypothesis that it is 
# more, at 5% L.O.S.
# Given n=40, p=36/40, P=85/100, alpha=0.05
# Ho: P<=0.85, H1:P > 0.85 (One Tailed Test)

p=36/40
P=85/100
n=40
Q=1-P
t_s=(p-P)/sqrt((P*Q)/n)
t_s
z=abs(t_s)
z
alpha=0.05
zalpha=qnorm(1-alpha)
zalpha
ifelse(z > zalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

pval=pnorm(z,lower.tail=FALSE)
pval
ifelse(pval < alpha,"reject","accept")


# Test of Significance between the means of two samples
# Problem 1
# A sample of heights of 6400 English men has a mean of 170 cm and S.D
# of 6.4 cm, while a sample of heights of 1600 Americans has a mean of
# 172 cm and a S.D. of 6.3 cm. Do the data indicate that Americans are 
# on the average, taller than the English men?

x1_bar=170
n1=6400
x2_bar=172
n2=1600
s1=6.4
s2=6.3
t_s=abs((x1_bar-x2_bar)/(sqrt((s1^2/n1)+(s2^2/n2))))
t_s
alpha=0.01
zalpha=qnorm(1-alpha)
zalpha
ifelse(t_s > zalpha,"reject","accept")

x=seq(-13,13,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type= "l")	
x=seq(t_s,13,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t_s,x,3),c(0,y,0),col="red")

val=pnorm(t_s)
val
pval=1-val
pval
ifelse(pval < alpha,"reject","accept")

# Problem 2
# The average marks scored by 32 boys is 72 with a S.D. of 8, while
# that for 36 girls is 70 with a S.D. of 6. Test at 1% L.O.S whether 
# the boys perform better than girls.
x1_bar=72
n1=32
x2_bar=70
n2=36
s1=8
s2=6
t_s=abs((x1_bar-x2_bar)/(sqrt((s1^2/n1)+(s2^2/n2))))
t_s
alpha=0.01
zalpha=qnorm(1-alpha)
zalpha
ifelse(t_s > zalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(t_s,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t_s,x,3),c(0,y,0),col="red")

val=pnorm(t_s)
val
pval=1-val
pval
ifelse(pval < alpha,"reject","accept")

# Problem 3
# A store keeper wanted to buy a large number of light bulbs of two
# brands A and B. He bought 100 bulbs from each brand and found by 
# testing that brand A had mean life-time of 1120 hours and S.D. of
# 75 hours,brand B had mean lifetime of 1060 hours and S.D. of 80 
# hours. Examine if the difference is significant. 
x1_bar=1120
n1=100
x2_bar=1060
n2=100
s1=75
s2=80
t_s=abs((x1_bar-x2_bar)/(sqrt((s1^2/n1)+(s2^2/n2))))
t_s
alpha=0.01
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(t_s > zalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(t_s,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t_s,x,3),c(0,y,0),col="red")

pval=2*pnorm(t_s,lower.tail=F)
pval
ifelse(pval < alpha,"reject","accept")