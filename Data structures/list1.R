#list
?matrix
s=c("my first list")
s
n=c(25,26,18,39)
n
m=matrix(c(1:10),nrow=2,ncol=5,byrow=T)
m
v=c("one","two","three")
v
?data.frame()
formno=c(17010,17045,17012)
name=c("a","b","c")
gender=c("M","F","M")
df=data.frame(formno,name,gender,stringsAsFactors = F)
df
str(df)
mylist=list(s,n,m,v,df)
mylist
str(mylist)
mylist=list(title=s,age=n,mat=m,v,student_details=df)
mylist
mylist[2]
mylist[[2]]
mylist$age
sum(mylist[[3]])
sum(mylist$mat)
mylist$student_details$name[2]
