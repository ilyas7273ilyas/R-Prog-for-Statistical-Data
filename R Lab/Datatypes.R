v<-TRUE
print(class(v))
a<-23.5
print(class(a))
b<-25
print(class(b))
c<-2L
print(class(c))
d<-"TRUE"
print(class(d))
e<-2+5i
print(class(e))
f<-charToRaw("Hellow")
print(class(f))
print(f)


apple<-c('red',"green",'yellow')
print(apple)
print(class(apple))


list1<-list(c(2,3,5),21.3,sin,TRUE)
print(list1)


M=matrix(c('a','a','b','c','b','a'),nrow=2,ncol = 3,byrow = TRUE)
print(M)


arr<-array(c('green','yellow'),dim<-c(3,3,2))
print(arr)


apple_color<-c('green','green','yellow','red','red','green')

factor_apple<-factor(apple_color)

print(factor_apple)
print(nlevels(factor_apple))


BMI<-data.frame(
  gender=c("male","male","female"),
  height=c(152,171.5,165),
  weight=c(81,93,78),
  Age=c(42,38,NA)  #if u have any missing value you need to write NA there 
)

print(BMI)

