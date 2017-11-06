set.seed(1234)
x=ceiling(rnorm(100,50,10))
x

quantile(x,c(0.25,0.5,0.75))
quantile(x)

quantile(x,seq(.1,1,by=0.1)) # decile
quantile(x,0.3)
quantile(x,seq(.01,1,by=0.01)) #3 percentile


library(timeSeries)
library(installr)
mtcars
updateR()

library(Hmisc)
.libPaths()
library(Rcmdr)
.libpaths()
update.packages(Rcmdr)


install.packages("car")
library(Rcmdr)
library(Rcmdr)
library(car)
library(Rcmdr)
