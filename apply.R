#apply
v1=c(1:24)
df_array=array(v1,c(4,3,2))
df_array
dimnames(df_array)=list(c(paste0("c",1:4)),c(paste0("d",1:3)),c(paste0("s",1:2)))

df_array


m1=matrix(c(10:1,rep(5,10),rep(c(5,6),5),seq_len(length.out =10)),byrow=F,ncol=4 )
m1
colnames(m1)=c(paste0("sub",1:ncol(m1)))
m1

rownames(m1)=c(paste0("R",1:nrow(m1)))
m1
df1=as.data.frame(m1)
df1


list1=list(sub1=10:1,sub2=rep(5,3),sub3=rep(c(5,6),4),sub4=seq_len(length.out=10))
list1


#all objects

df_array
m1
df1
list1

#apply
a1=df_array
a1
x=a1
dimnames(x)
apply(x,1,sum)
apply(x,2,mean)

class(apply(x,1,sum))
addmargins(x,1,sum)


m1=matrix(1:16,nrow=4)
m1
m1[1,]


for(i in 1:nrow(m1))
{
 print(mean(m1[i,]))
}

addmargins(m1,FUN =list(list("mean"=mean,"sum"=sum)))
?apply

apply(m1,1,FUN = mean)



array1=array(1:24,c(3,4,2))
array1
apply(array1,1,sum)
apply(array1,2,sd)

x=c(1,2,3,13,14,15)
sd(x)
apply(array1,c(1,2),sum)
apply(array1,c(1,3),sum)
apply(array1,c(3,1),sum)
apply(array1,c(1,2,3),sum)


########################## lapply ###################

num=list(a=1,b=1:3,c=10:100)
num
num(1)
num[1]
num[2]
lapply(num,length)
lapply(num,sum)
lapply(num[3],sum)
lapply(num$c,sum)

rnorm(3,1)
sapply(num,sum)
?sapply
num1=list(a=c(1:5))
sapply(num1,sum)

sapply(1:5,sum)
lapply(1:5,sum)
x2=list(1:5)
str(x2)
summary(x2)
x3=list(1,2,3)
str(x3)
summary(x3)


a1=c(1,2)
b1=c(1,2,3,4)
a1+b1



q2=matrix(c(1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4),4,4) # rep(1,4) = 1,1,1,1
q2

q3=mapply(rep,1:4,5)
q3
?mapply


q4=mapply(function(x,y) x^y,c(2:10),c(3:5))

q4
names(q4)=letters[c(1:9)]
q4




############ eapply
lsf.str()
eapply(.GlobalEnv,is.function)
unlist(eapply(.GlobalEnv,is.vector))


################## by
mtcars
by(mtcars$mpg,mtcars$am,mean)
split(mtcars,mtcars$am)


warpbreaks["breaks"]
warpbreaks["wool"]
warpbreaks$breaks[warpbreaks$breaks>30]

warpbreaks[,c("breaks","wool")]
by(warpbreaks[c("breaks","wool")],warpbreaks$tension,summary)
by(warpbreaks[c("breaks","wool")],warpbreaks$tension,summary)




##################### vapply

library(MASS)
painters
painters$Composition[painters$School=="C"]
tapply(painters$Composition,painters$School=="C",mean)






# sweep

mx=matrix(1:12,ncol=3)
mx
mx+1
mx+c(1,2)
dx=colMeans(mx)
sweep(mx,2,dx,"-")
rx=rowMeans(mx)
rx
sweep(mx,1,rx,"+")

