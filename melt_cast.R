#cast and melt
(rollno=rep(c(10,11,12,13),4))
(sname=rep(c("a","b","c","d"),4))
examunit=rep(c("u1","u2","u3","u4"),each=4) 
examunit
set.seed(1234)
rpgm=ceiling(rnorm(16,60,10))
rpgm
set.seed(1234)
sql=ceiling(rnorm(16,65,10))
sql
df_exam=data.frame(rollno,sname,examunit,rpgm,sql)
df_exam  #wide formate

library(reshape)   #long format
md=melt(df_exam,id=c("rollno","sname","examunit"))
md
md[md$rollno==13,]
str(md)
me=cast(md,rollno+sname+examunit~variable)
str(me)
mf=cast(md,rollno+sname+variable~examunit)
mf
mg=cast(md,rollno+sname~examunit~variable)
mg


# melt and cast on dataset "airquality"

data("airquality")
str(airquality)
names(airquality) <- tolower(names(airquality))  # converting names to lower case
(aqm <- melt(airquality, id=c("month", "day"), na.rm=TRUE)) #melting
#casting
(acast(aqm, day ~ month ~ variable))
(acast(aqm, month ~ variable, mean)) #month wise mean of variable
(acast(aqm, month ~ variable, sum, margins = TRUE)) #month wise sum of variables and total sum
(dcast(aqm, month ~ variable, mean,margins = TRUE)) #month wise sum of variables and total sum
library(plyr)  # for accessing the . operator
# month wise mean of “ozone” variable only
(acast(aqm, variable ~ month, mean, subset = .(variable == "ozone")))


