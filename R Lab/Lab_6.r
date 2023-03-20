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

x=seq(-12,12,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type= "l")	
x=seq(t_s,12,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t_s,x,3),c(0,y,0),col="red")

val=pnorm(t_s)
val
pval=1-val
pval
ifelse(pval < alpha,"reject","accept")

#val=pnorm(t_s, lower.tail = F)
#val
#ifelse(pval < alpha,"reject","accept")

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
alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(t_s > zalpha,"reject","accept")

x=seq(-6,6,length=500)      #t_s=5.4715
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(t_s,6,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t_s,x,3),c(0,y,0),col="red")

pval=2*pnorm(t_s,lower.tail=F)
pval
ifelse(pval < alpha,"reject","accept")

# Test of Significance of the Difference between Two Sample Proportions
# Problem 1
# In a large city A, 20% of a random sample of 900 school boys
# had a slight physical defect. In another large city B, 
# 18.5% of a random sample of 1600 school boys had the same 
# defect. Is the difference between the proportions significiant?
# Ho:p1=p2 & H1:p1!=p2, 

p1=20/100
p2=18.5/100
n1=900
n2=1600
Pbar=((n1*p1)+(n2*p2))/(n1+n2)
Pbar
Qbar=1-Pbar
Qbar
alpha=0.05
t_s=abs((p1-p2)/sqrt((Pbar*Qbar)*((1/n1)+(1/n2))))
t_s
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(t_s > zhalfalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(t_s,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t_s,x,3),c(0,y,0),col="red")

val=2*pnorm(t_s,lower.tail=F)
val
ifelse(val < alpha,"reject","accept")

# Problem 2
# In a study conducted at an university, 15.5% of a random sample of 1600 undergraduates
# were active in Facebook,whereas 20 % of a random sample of 900 postgraduates were active 
# in Facebook. Can we conclude that less number of under graduates are active in Facebook
# than the postgraduates? Test at 5% L.O.S.
# Ho:p1>=p2 & H1:p1<p2

p1=15.5/100
p2=20/100
n1=1600
n2=900
Pbar=((n1*p1)+(n2*p2))/(n1+n2)
Pbar
Qbar=1-Pbar
Qbar
alpha=0.05
t_s=abs((p1-p2)/sqrt((Pbar*Qbar)*((1/n1)+(1/n2))))
t_s
zalpha=qnorm(1-alpha)
zalpha
ifelse(t_s > zalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(t_s,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t_s,x,3),c(0,y,0),col="red")

val=pnorm(t_s,lower.tail=F)
val
ifelse(val < alpha,"reject","accept")

# Problem 3
# Before an increase in excise duty on tea, 800 people out of a sample
# of 1000 were consumers of wheat. After the increase in duty, 800
# people were consumers of wheat in a sample of 1200 persons. Find 
# whether there is significant decrease in the consumption of wheat
# after the increase in duty.Test at 1% L.O.S.
# Ho:p1<=p2 & H1:p1>p2

p1=800/1000
p2=800/1200
n1=1000
n2=1200
Pbar=((n1*p1)+(n2*p2))/(n1+n2)
Pbar
Qbar=1-Pbar
Qbar
alpha=0.01
t_s=abs((p1-p2)/sqrt((Pbar*Qbar)*((1/n1)+(1/n2))))
t_s
zalpha=qnorm(1-alpha)
zalpha
ifelse(t_s > zalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(t_s,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t_s,x,3),c(0,y,0),col="red")

val=pnorm(t_s,lower.tail=F)
val
ifelse(val < alpha,"reject","accept")
