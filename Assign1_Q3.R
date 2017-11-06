#Converting a set of vector data into intervals and finding freq. distribution
set.seed(1234)
x=ceiling(rnorm(100,60,15)) #generating random data
x
mean(x)

# method 1
table(x)
range(x)  

intervals=seq(20,100,by=10)                             # seq(min(x).max(x),10)
intervals
x.cut=cut(x,intervals)
x.cut
x.dist=cbind(table(x.cut))
hist(x)

#method 2 To understand cut demand

x[c(1,2,3,4,5)]=c(0,10,11,99,100)  #adding outliers to data

head(x,n=5)
(bks=seq(0,100,10))  # () prints as well as executes the statement

classint1=cut(x,breaks=bks)
head(classint1,n=5)
table(classint1)
table(classint1,useNA='ifany')
?table


classint2=cut(x,breaks=bks,right=F)
head(classint2,n=5)
table(classint2,useNA='ifany')

# correct method to avoid NA problem

classint3=cut(x,breaks=bks,include.lowest = T)
as.character(head(classint3,n=5))


# using labels

classint4=cut(x,breaks=bks,include.lowest=T,labels=LETTERS[1:length(bks)-1])
classint4
as.character(head(classint4,n=5))