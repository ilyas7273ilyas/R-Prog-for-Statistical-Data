Employee_info1<-data.frame(
  Emp_id=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15),
  Age=c(30,37,45,32,50,60,35,32,34,43,32,30,43,30,60),
  Sex=c('F','M','F','M','M','M','F','F','M','F','F','M','M','F','F'),
  Status=c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
)
print(Employee_info1)

var=table(Employee_info1)
var
summary(Employee_info1)
