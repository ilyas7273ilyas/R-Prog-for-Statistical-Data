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