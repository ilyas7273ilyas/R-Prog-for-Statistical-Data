# Test of Significance of the Difference between Sample Mean and Population Mean
# for small samples
# Problem 1
x=c(0.593,0.142,0.329,0.691,0.231,0.793,0.519,0.392,0.418)
xbar=mean(x)
xbar
alpha=0.05
mu=0.3
s=sqrt(var(x))
s
n=length(x)
n
ct=(xbar-mu)/(s/sqrt(n-1))
ct    #Calculated Value
tv=qt(1-alpha,df=n-1)
tv       #Table value
ifelse(ct > tv,"reject","accept")

# Problem 2
x=c(65, 78, 88, 55, 48, 95, 66, 57, 79, 81)
xbar=mean(x)
xbar
s=sqrt(var(x))
s
mu=75
alpha=0.05
n=length(x)
n
ct=abs((xbar-mu)/(s/sqrt(n-1)))
ct
tv=qt(1-(alpha/2), n-1) 
tv
ifelse( ct > tv,"reject","accept")

# Test of Significance of the difference between Means of Two Small Samples
# drawn from the same normal population
# Problem 3
x1=c(175,168,168,190,156,181,182,175,174,179)
x2=c(185,169,173,173,188,186,175,174,179,180)
alpha=0.05
n1=length(x1)
n2=length(x2)
x1bar=mean(x1)
x1bar
x2bar=mean(x2)
x2bar
s1=sqrt(var(x1))
s1
s2=sqrt(var(x2))
s2
ct=abs(x1bar-x2bar)/sqrt(((n1*s1^2+n2*s2^2)/ (n1+ n2-2))*(1/n1+1/n2))
ct      #test Statistics
tv=qt(1-(alpha/2),n1+n2-2)
tv 
ifelse( ct > tv,"reject","accept")

# Problem 4
x1=c(15,10,13,7,9,8,21,9,14,8)
x2=c(15,14,12,8,14,7,16,10,15,2)
alpha=0.05
n1=length(x1)
n2=length(x2)
x1bar=mean(x1)
x1bar
x2bar=mean(x2)
x2bar
s1=sqrt(var(x1))
s1
s2=sqrt(var(x2))
s2
ct=abs(x1bar-x2bar)/sqrt(((n1*s1^2+n2*s2^2)/ (n1+ n2-2))*(1/n1+1/n2))
ct
tv=qt(1-alpha,n1+n2-2)
tv
ifelse( ct > tv,"reject","accept")

# F-Test for significance of population variances
# Problem 1
A=c(14.1,10.1,14.7,13.7,14.0)
B=c(14.0,14.5,13.7,12.7,14.1)
alpha=0.1
n1=length(A)
n2=length(B)
s12=var(A)   #s1 square
s22=var(B)    #s2 square
cF=((n1*s12)/(n1-1))/((n2*s22)/(n2-1))
cF
tF=qf(1-alpha,n1-1,n2-1)
tF
ifelse(cF>tF,"REJECT","ACCEPT")

# Problem 2
x1=c(13.4,10.9,11.2,11.8,14,15.3,14.2,12.6,17,16.2,16.5,15.7)
x2=c(12,11.7,10.7,11.2,14.8,14.4,13.9,13.7,16.9,16.0,15.6,16.0)
alpha=0.05
n1=length(x1)
n2=length(x2)
s12=var(x1)
s12
s22=var(x2)
s22
cf=((n1*s12)/(n1-1))/((n2*s22)/(n2-1))
cf
tf=qf(1-alpha,n1-1,n2-1)
tf
ifelse(cf>tf,"reject","accept")

# Problem 3
x1=c(9,11,13,11,15,9,12,14)
x2=c(10,12,10,14,9,8,10)
alpha=0.05
n1=length(x1)
n2=length(x2)
s12=var(x1)
s12
s22=var(x2)
s22
cf=((n1*s12)/(n1-1))/((n2*s22)/(n2-1))
cf
tf=qf(1-alpha,n1-1,n2-1)
tf
ifelse(cf>tf,"reject","accept")