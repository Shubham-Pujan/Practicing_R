#arrays

# 2 com, each comp hae 3 dept, each dept has 4 salesmen
?length
company=c("c1","c2")
dept=c("d1","d2","d3")
salesman=c("s1","s2","s3","s4")
company
dept
salesman
set.seed(1234)  #keep amount constant
sales=ceiling(runif(2*3*4,50,100)) #assign random sales values between 50 and 100
sales
cat(sales)
mean(sales)
set.seed(1234)
sales=ceiling(runif(2*3*4,50,100))
sales
?array
salesarray=array(sales,c(4,3,2),dimnames=list(salesman,dept,company))
salesarray
dimnames(salesarray)[3]
salesarray[,2,]
apply(salesarray,c(1,2,3),length)
apply(salesarray,c(2,3),sum)
