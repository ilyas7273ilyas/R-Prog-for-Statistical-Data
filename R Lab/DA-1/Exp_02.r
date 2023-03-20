Employee_info<-data.frame(
  Emp_id=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15),
  Age=c(30,37,45,32,50,60,35,32,34,43,32,30,43,50,60),
  Sex=c('F','M','F','M','M','M','F','F','M','F','F','M','M','F','F'),
  Status=c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
)
Employee_info



maleinfo=subset(Employee_info, Employee_info$Sex=='M')
summary(maleinfo)
femaleinfo=subset(Employee_info, Employee_info$Sex=='F')
summary(femaleinfo)

# install.packages('dplyr')

group_by(Employee_info)

summary(Employee_info)


plot(Employee_info$Emp_id, Employee_info$Age, type="o",
     main="Age of Employees",
     xlab="Employee's ID",
     ylab='Age', col="red")

gr1=table(Employee_info$Sex)
pie(gr1, main = 'Sex', col="gray",
    border = 'red', radius=1.0)


boxplot(Employee_info$Age, main="Plot of Age",
         horizontal=T, col='light blue', border='red')     

hist(Employee_info$Age, main="Graph of Age", xlab='Age of Employees',
     col='sky blue', border='red') 

d=density(Employee_info$Age)
plot(d, col='red', main="Age of Employees")
