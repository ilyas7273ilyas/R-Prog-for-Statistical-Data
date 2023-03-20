#Problem 1

n=100                           #Ho:xbar=mu  || mu=1600
xbar=1580                       #H1:xbar!=mu || mu!=1600
sigma=90
mu=1600

z=abs((xbar-mu)/(sigma/sqrt(n)))
z

alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z>zhalfalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

pval=2*pnorm(z,lower.tail = FALSE)
pval
ifelse(pval<alpha,"reject","accept")



#Problem 2

n=50
xbar=1850                        #Ho:xbar>=mu
sigma=100                        #H1:xbar<mu
mu=1800

z=abs((xbar-mu)/(sigma/sqrt(n)))
z

alpha=0.01
zalpha=qnorm(1-alpha)
zalpha
ifelse(z>zalpha,"reject","accept")

x=seq(-4,4,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,4,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,4),c(0,y,0),col="red")

pval=2*pnorm(z,lower.tail = FALSE)
pval
ifelse(pval<alpha,"reject","accept")


#Problem 3

P=1/3
p=3240/9000                    #Ho:p=P
n=9000                         #H1:p!=P
Q=1-P
z=abs((p-P)/sqrt((P*Q)/n))
z

alpha=0.05
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
ifelse(z>zhalfalpha,"reject","accept")

x=seq(-6,6,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,6,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,6),c(0,y,0),col="red")

pval=2*pnorm(z,lower.tail = FALSE)
pval
ifelse(pval<alpha,"reject","accept")



#Problem 4

n=40
p=36/40           #Ho:P<=85%    : p<=P
P=85/100          #H1:P>85%     : p>P
Q=1-P
z=abs((p-P)/sqrt((P*Q)/n))
z

alpha=0.05
zalpha=qnorm(1-alpha)
zalpha
ifelse(z>zalpha,"reject","accept")

x=seq(-3,3,length=500)
y=dnorm(x,mean=0 ,sd=1)
plot(x,y,type= "l")	
x=seq(z,3,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="red")

pval=2*pnorm(z,lower.tail = FALSE)
pval
ifelse(pval<alpha,"reject","accept")
