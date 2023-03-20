obj=data.frame(Price=c(4.5,5.5,4.5,4.5,4.0,5.5,5.5,6.5,5.0,5.5,6.0,4.5),
                Qty_Sold=c(125,115,140,140,150,150,130,120,130,100,105,150)
                )
obj

mode=lm(Price~Qty_Sold, data=obj)
mode
#summary(model)$r.squared

#scatter3d(obj$Price, obj$Qty_Sold)  #there should be three attributes
plot(obj$Price, obj$Qty_Sold, xlab="Price", ylab="Quantity Sold", col='red')

Karl_Pearson_cor=cor(obj$Price, obj$Qty_Sold, method='pearson')
Karl_Pearson_cor

Spearman_cor=cor(obj$Price, obj$Qty_Sold, method='spearman')
Spearman_cor

#By Default
Kendall_cor=cor(obj$Price, obj$Qty_Sold)
Kendall_cor

#Coefficient of determination
#saving the linear regression model in a new variable model
model=lm(Price~Qty_Sold, data=obj)
model

#extracting the coefficient of determination from the r.squared attribute of its summary
summary(model)$r.squared

