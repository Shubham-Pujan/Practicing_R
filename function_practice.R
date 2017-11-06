#functions practice
df2=read.csv("./data/dsstudents.csv")
df2

feestatus=function(x)
{
  if(x>=150000)
    print(paste(i,df2$fess[i],x," fee paid"))
  else
    print(paste(i,df2$fess[i],x," fee not paid "))
}

length(df2$fees)
for(i in c(1:length(df2$fees)))
{
  feestatus(df2$fees[i])
}
