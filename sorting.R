#sorting
set.seed(1123)
marks=ceiling(runif(11,5,10))
marks

sort(marks)
sort(marks,decr=TRUE)
sort(-marks)
order(marks)
rank(marks)
-marks
sort(-marks)
order(-marks)


marks2=marks

marks2[5]=NA
marks2
 sort(marks2)
 sort(marks2,na.last = TRUE)
 sort(marks2,na.last=FALSE)
 
 order(marks2)
 order(marks2,na.last = TRUE)
 order(marks2,na.last=FALSE)
 
 
 mean(marks2,na.rm=TRUE)  #remone NA value to calculate mean
 
 
 #rank
 
 marks

sort(marks)
 rank(marks,ties.method="first")
 order(marks)
 rank(marks,ties.method="average")
 