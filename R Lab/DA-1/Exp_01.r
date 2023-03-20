# library(readxl)
# Health_data==read_excel("C:/Users/ilyas/Desktop/R/DA-1/Health_data.xlsx")
# View(Health_data)

# a=table(Health_data$HEIGHT, Health_data$WEIGHT)
# a
# Health_data$HEIGHT
# Health_data$WEIGHT

data=read.csv("C:/Users/ilyas/Desktop/R/DA-1/Health_data.csv")
data

a1=data$HEIGHT
a1

a2=data$WEIGHT
a2

b1=data.frame(data$HEIGHT, data$WEIGHT)
b1

c1=table(data$GENDER, data$Exercise)
c1

#data$BMI=data$WEIGHT/(data$HEIGHT)^2





#A moment about the origin is sometimes called a raw moment.
#central=TRUE  (Central Moments)
#central=FALSE  (Raw Moments)  {and also by default it is Raw Moments}
# d1=all.moments(data$HEIGHT)
# d1
# 
# d0=moment(data$HEIGHT, order = 0)
# d0
# 
# d2=moment(data$HEIGHT, order = 1)
# d2
# 
# d3=moment(data$HEIGHT, order = 2)
# d3
# 
# d4=moment(data$HEIGHT, order = 3)
# d4
# 
# d5=moment(data$HEIGHT, order = 4)
# d5
# 
# sk=skewness(data$HEIGHT)
# sk
# 
# 
# ku=kurtosis(data$HEIGHT)
# ku



m1=moment(data$BMI, order = 1)
m1

m2=moment(data$BMI, order = 2)
m2

m3=moment(data$BMI, order = 3)
m3

m4=moment(data$BMI, order = 4)
m4

# m_all=all.moments(data$BMI)
# m_all

sk=skewness(data$BMI)
sk

kur=kurtosis(data$BMI)
kur
