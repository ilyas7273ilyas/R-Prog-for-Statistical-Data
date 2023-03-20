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
