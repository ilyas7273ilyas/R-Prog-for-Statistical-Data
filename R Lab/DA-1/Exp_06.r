#Problem 01

n1=500
n2=400
x1bar=11.5
x2bar=10.9
s1=5
s2=5

z=abs((x1bar-x2bar)/(sqrt((s1^2/n1)+(s2^2/n2))))
z

alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z > zalpha,"reject","accept")

x=seq(-12,12,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type= "l")	
x=seq(z,12,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

pval=2*pnorm(z,lower.tail = FALSE)
pval
ifelse(pval<alpha,"reject","accept")

#Problem 02

n1=1000
n2=2000             #Ho:x1bar=x2bar
x1bar=67.5          #H1:x1bar!=x2bar
x2bar=68
s1=2.5
s2=2.5

z=abs((x1bar-x2bar)/(sqrt((s1^2/n1)+(s2^2/n2))))
z

alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z > zhalfalpha,"reject","accept")

x=seq(-12,12,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type= "l")	
x=seq(z,12,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

pval=2*pnorm(z,lower.tail = FALSE)
pval
ifelse(pval<alpha,"reject","accept")


#Problem 03

n1=400     #Ho:p1>=p2
n2=300     #H1:p1<p2
p1=20/400
p2=10/300

Pbar=((n1*p1)+(n2*p2))/(n1+n2)
Pbar
Qbar=1-Pbar
Qbar
alpha=0.05

z=abs((p1-p2)/sqrt((Pbar*Qbar)*((1/n1)+(1/n2))))
z

zalpha=qnorm(1-alpha)
zalpha
ifelse(z > zalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type= "l")	
x=seq(z,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

pval=pnorm(z,lower.tail = FALSE)
pval
ifelse(pval<alpha,"reject","accept")

#Problem 04

n1=400
n2=600
p1=200/400
p2=325/600
Pbar=((n1*p1)+(n2*p2))/(n1+n2)
Pbar
Qbar=1-Pbar
Qbar
alpha=0.05
z=abs((p1-p2)/sqrt((Pbar*Qbar)*((1/n1)+(1/n2))))
z

zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z > zhalfalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

val=2*pnorm(z,lower.tail=F)
val
ifelse(val < alpha,"reject","accept")