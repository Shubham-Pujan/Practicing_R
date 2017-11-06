hist(mtcars$mpg)
par(col.lab='blue')
hist(mtcars$mpg)
opar=par(no.readonly=T)
opar
par(opar)
hist(mtcars$mpg)
par('mar')
par('mai')
par(mar=c(1,1,1,1))

hist(mtcars$mpg)
attach(mtcars)
hist(mpg)
hist(cyl)

par(mfrow=c(2,2))

hist(mpg,main=1)
hist(mpg,main=2)
hist(mpg,main=3)
hist(mpg,main=4)


par(mfcol=c(2,2)) #multiple frames per coloumn

hist(mpg,main=1)
hist(mpg,main=2)
hist(mpg,main=3)
hist(mpg,main=4)



layout(matrix(c(1,2,3,4,5,6),byrow=T,nrow=3))

hist(mpg,main=4)
hist(cyl,main=2)
hist(mpg,main=3)
hist(mpg,main=1)
hist(cyl,main=5)
hist(mpg,main=6)


layout(matrix(c(1,1,2,3),byrow=T,nrow=2),widths=c(3,1),heights=c(1,2))
hist(mpg,main=1)
hist(mpg,main=1)

hist(mpg,main=2)
hist(cyl,main=3)

attach(mtcars)
plot.new()
par(fig=c(0,0.8,0,0.8),new=TRUE)
plot(wt,mpg)


par(fig=c(0,0.8,0.7,1),new=TRUE)
boxplot(wt,horizontal = T,axes=F)

par(fig=c(0.7,1,0,0.8),new=TRUE)
boxplot(mpg,horizontal = F,axes=F)

