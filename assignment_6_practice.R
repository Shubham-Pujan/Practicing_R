seq(10,100,length.out=40)
m=matrix(c(1:12),nrow=3)
m
dx=colMeans(m)
dx
sweep(m,1,3,FUN="-")
n=3
sweep(m,1,n,FUN="-")



x=c(1,2)
y=c(2,3)
z=c(x,y)
z

?sweep
v=matrix(c(1,2,3,4),nrow=2)
n=c(1,2)
m=c(3,4)
sweep(v,1,n,FUN="+")
v
sweep(v,2,m,FUN="+")
v
sweep(v,1:2,m:n,FUN="+")  #33#3333  error


v
v[,1]*v[,2]
cbind(v,v[,1]*v[,2])
sweep(v,MARGIN = 1,STATS =m,FUN="+" )
v







##########################  mode  ##########3333

mode=c(1,1,1,2,2,3,4,5,5,5)
tab=table(mode)
tab
maxi=max(table(mode))
maxi
mode_1=(names(tab[tab==maxi]))


summary(mode_1)

mode_1=as.integer(mode_1)
mode_1






mode2=c(1,1,2,3,3,4)
mode3=    as.integer( names(( table(mode2) )[table(mode2)==  max(table(mode2))]))
mode3
