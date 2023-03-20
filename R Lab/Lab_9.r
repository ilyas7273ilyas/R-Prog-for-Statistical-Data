# One way anova    (Analysis of Variance)
# Problem 1

group1=c(551,457,450,731,499,632)
group2=c(595,580,508,583,633,517)
group3=c(639,615,511,573,648,677)
group4=c(417,449,517,438,415,555)
group5=c(563,631,522,613,656,679)
group=data.frame(cbind(group1,group2,group3,group4,group5))
group
summary(group)
stgr=stack(group)
stgr
crd=aov(values~ind,data=stgr)    #Completely Randomized Design
crd
summary(crd)
boxplot(group)

# Problem 2
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
