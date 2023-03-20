#Two way anova
# Problem 1
m1=c(42.5,39.3,39.6,39.9,42.9,43.6)
m1
m2=c(39.8,40.1,40.5,42.3,42.5,43.1)
m2
m3=c(40.2,40.5,41.3,43.4,44.9,45.1)
m3
m4=c(41.3,42.2,43.5,44.2,45.9,42.3)
m4
data=data.frame(m1,m2,m3,m4)
data
data=t(data)
data

time=c(t(as.matrix(data)))
time

f=c("Oper1","Oper2","Oper3","Oper4","Oper5","Oper6")
f
g=c("M1","M2","M3","M4")
g
k=ncol(data)
k
n=nrow(data)
n
Operators=gl(k,1,n*k,factor(f))
Operators
Machines=gl(n,k,n*k,factor(g))
Machines
anova=aov(time ~ Machines + Operators)

summary(anova)

interaction.plot(Operators,Machines,time)
plot(time ~ Machines+Operators,main="Product time")

# Problem 2

s1=c(68,57,73,61)
s1
s2=c(83,94,91,86)
s2
s3=c(72,81,63,59)
s3
s4=c(55,73,77,66)
s4
s5=c(92,68,75,87)
data=data.frame(s1,s2,s3,s4,s5)
data
data=t(data)
data

Marks=c(t(as.matrix(data)))
Marks

f=c("Maths","English","French","Biology")
f
g=c("s1","s2","s3","s4","s5")
g
k=ncol(data)
k
n=nrow(data)
n
Subjects=gl(k,1,n*k,factor(f))
Subjects
Students=gl(n,k,n*k,factor(g))
Students
anova=aov(Marks ~ Students + Subjects)

summary(anova)

interaction.plot(Subjects,Students,Marks)
plot(Marks ~ Students + Subjects,main="Final Marks")
