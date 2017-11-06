#linear regression
data(women)
women


attach(women)
cov(height,weight)
cor(height,weight)
weight.lm=lm(weight~height,data=women)
weight.lm
plot(height,weight)
