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