n=c(2,3,5)
s=c("aa","bb","cc")
b=c(TRUE,FALSE,TRUE)
n;s;b
df=data.frame(n,s,b)
df
str(df)
summary(df)
d=c('m','f','m')
df=data.frame(n,s,b,d,stringsAsFactors=F)
str(df)
summary(df)

mtcars[1:5,2:4]
attach(df)
mtcars[,4]
