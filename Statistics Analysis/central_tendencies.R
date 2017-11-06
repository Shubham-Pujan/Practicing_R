
############## mean 


set.seed(1234)
x=ceiling(rnorm(100,50,10))
mean_x=sum(x)/length(x)
mean(x)
summary(x)

######### trimming values

set.sedd(1234)
x=ceiling(runif(100,50,100))
x
mean(x)
mean(x,trim=0.1)


y=c(1:10)
y
mean(y)
mean(y,trim=0.1)

#########  na values - remove

x
x[c(1,20,30)]=NA
x
length(na.omit(x))
table(is.na(x))
mean(x)                               #############  error
mean(x,na.rm=TRUE)



#mean deviation

x=c(3,6,6,7,8,11,15,16)

mx=mean(x)
mx
(mdev=x-mx)
abs(mdev)
mabsdev=sum(abs(mdev))/length(x)
mabsdev
mad(x)





############333  model

x=c(2,3,4,4,4,5,5,5)
library(modeest)
m=mlv(x,method="mfv")
m
