x=factor(c("male","female","male"))
x
c=factor(c("low","medium","high",ordered=T))
c
c=factor(c("low","medium","high"),levels=c("low","medium","high"))
c
#
#
months1<-c("Apr","Jan","Feb","Aug","Dec")
months1
month.abb[1:12]
months2=factor(months1)
months2
months3=factor(months1,levels=month.abb[1:12])
months3
months4=c(months1,"xyz")
months4
#
#
#
#############

?factor
?mean
#
#
#
#
clspos=c(1,2,3,1)
class(clspos)

summary(clspos)
fclspos=factor(clspos)
fclspos
fclspos2=factor(clspos,levels=c(1,2,3,4,5),ordered=T,labels=c("first","second","third","fourth","fifth")
              )
fclspos2
?factor

fclspos2[c(1,2)]
fclspos3=factor(fclspos2,levels (fclspos2)[c(5,4,3,2,1)])
fclspos3

fclspos3=factor(fclspos2,levels (fclspos2)[c(5,4,3,2,1)])
fclspos3
levels(fclspos2)[c(5,2)]
