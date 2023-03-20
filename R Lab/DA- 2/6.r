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