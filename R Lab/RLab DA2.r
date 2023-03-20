#1 One Tail
xbar=1450
mu=1500
n=20
s=110
alpha=0.05
ct=abs((xbar-mu)/(s/sqrt(n-1)))
ct
tv=qt(1-alpha, df=n-1)
tv
ifelse(ct>tv, "reject", 'accept')



#2 Two Tail
x1=c(24,22,20,26,21,23,21,19)
x2=c(20,19,20,24,20,23,21)
alpha=0.05
n1=length(x1)
n2=length(x2)
x1bar=mean(x1)
x2bar=mean(x2)
s1=sqrt(var(x1))
s2=sqrt(var(x2))
ct=abs(x1bar-x2bar)/sqrt(((n1*s1^2+n2*s2^2)/(n1+n2-2))*(1/n1+1/n2))
ct
tv=qt(1-(alpha/2), n1+n2-2)
tv
ifelse(ct > tv, "reject", "accept")

#3  One Two Tail
x1=c(9,11,13,11,15,9,12,14)
x2=c(10,12,10,14,9,8,10)
alpha=0.05
n1=length(x1)
n2=length(x2)
s12=var(x1)
s22=var(x2)
cF=((n1*s12)/(n1-1))/((n2*s22)/(n2-1))
cF
tF=qf(1-alpha, n1-1, n2-1)
tF
ifelse(ct > tv, "reject", "accept")

#4
data=matrix(c(83,57,45,68), ncol = 2, byrow = T)

chisq.test(data)


#5
item1=c(22,42,44,52,45,37)
item2=c(52,33,8,47,43,32)
item3=c(16,24,19,18,34,39)
group=data.frame(cbind(item1,item2,item3))
group
summary(group)
stgr=stack(group)
stgr
crd=aov(values~ind,data=stgr)
crd
summary(crd)
boxplot(group)

#6
R1=c(1.9,2.2,2.6,1.8,2.1)
R2=c(2.5,1.9,2.3,2.6,2.2)
R3=c(1.7,1.9,2.2,2.0,2.1)
R4=c(2.1,1.8,2.5,2.3,2.4)
data=data.frame(R1,R2,R3,R4)
data=t(data)

Weight=c(t(as.matrix(data)))
Weight
f=c("B1","B2",'B3','B4','B5')
g=c("R1",'R2','R3','R4')
k=ncol(data)
n=nrow(data)
Breeds=gl(k, 1, n*k, factor(f))
Breeds
Rations=gl(n, k, n*k, factor(g))
Rations
anova=aov(Weight ~ Rations + Breeds)
summary(anova)
interaction.plot(Breeds, Rations, Weight)
plot(Weight ~ Rations + Breeds, main= "Final Weight")
