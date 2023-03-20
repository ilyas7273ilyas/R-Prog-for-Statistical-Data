data=matrix(c(35,42,61,48,51,68),ncol=3,byrow=T)
data
chisq.test(data)

library(MASS)   #MASS is in build package in R
survey
tb1=table(survey$Smoke,survey$Exer)
tb1
chisq.test(tb1)
