data4=read.csv("C:/Users/ilyas/Desktop/R/DA-1/admission.csv")
data4

#1
model4=lm(Admitted~GREScore+TOEFLScore+CGPA, data=data4)
model4

#1a
model4a=lm(GREScore~TOEFLScore+CGPA, data=data4)
model4a

#2
summary(model4)

#3
summary(model4)$r.squared


summary(model4)$r.squared
summary(model4)