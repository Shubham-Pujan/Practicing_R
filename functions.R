y=c(1,2,3,4)
fsum=function(x)
{
  return(sum(x))
  
}

fsum(y)


area=function(r)
{
  ans=pi*r*r
}

r=as.integer(readline(prompt = " Enter Radius : "))
ans1=area(r)
print(noquote(paste(" Area is :",ans1)))
lsf.str()
search()
ls()
lsf.str(pos=2)
save(area,fsum,file="./data/functiondata.Rdata")
rm(list=ls())
load("./data/functiondata.Rdata")
ls()
area=area
area
ysum=fsum
ysum
fsum
args(area)
(cha1=deparse(args(area)))
str(cha1)

cha1[1]


areacircle2= function(constant=3.14,r)
{
  areacircle=constant*r*r
  invisible(areacircle)
}

areacircle2(r=5)
ans=areacircle2(r=5)
ans
