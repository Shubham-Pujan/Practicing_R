vec1=c(1,2,3,4)
vec1
vec2=1:10

vec2
vec3=c(vec1,8,vec2)
vec3
vec3[12]
vec3[12]=46
vec3
vec4=seq(from=0,to=10,by=1)
vec4
vec5=vec1+vec2
vec1+vec2
length(vec1)
vec6=vec4*3
vec6
x=vector("numeric",5)
u=c(1,2,3)
v=c(4,5,6,7,8,9)
u+v
u[-1]
a=c(1,2,3,4,5)
g=c(TRUE,FALSE,FALSE,TRUE,TRUE)
a[g]
a[c(FALSE,TRUE,TRUE,FALSE,FALSE)]
v=c("mary","sue")

v
x=c("shubham","pujan")
x
names(v)=c("first","last")
x="shubham"
substr(x,4,7)
gsub("h","qwerty",x)
x=c(15,5,7,43,0)
order(x)
sort(x)
x[order(x)]
v=rep(2,3)
a=c(1,2,3)
v=rep(a,3)
rep(a,c(1,2,3))
















x<-matrix(1:12,nrow=4,byrow=T)
x
x[2,2]
x[1:2,]
x[c(1,3),]
class(x)
dim(x)
x[-2,-3]
x
colnames(x)=c("a","b","c")
x
rownames(x)=paste('r',1:4,sep='b')
x
g=t(x)
g
x
m=c(10,20,30,40)
cbind(m,x)
cbind(x,m)
cbind(x,m,x)
x
x[x[,2]>5,]
