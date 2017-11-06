df1=read.csv(file='./data/dsstudents.csv')
df1
str(df1)
head(df1[,1:2])
?head
df2=read.csv(file='./data/dsstudents.csv',row.names = "rollno")
df2
str(df2)

df2$rollno2=as.numeric(row.names(df2)) 
#create another rollno since rollno become rowname & cannot be used as variable eg df2$rollno
str(df2)
df2["17078","name"]
df2$rollno2[c(1,3)]
df2=df2[,c(ncol(df2),1:(ncol(df2)-1))]#reordering last rollno coloumn to first
df2=df2[,c(1:12)]
df2

df2=df2[c(3,1:12)]   #reordering coloumns

df2   #reorder by using coloumn names : df2 = df2 [c("a","b",.....)]

write.csv(x=df2,file='./data/file_import.csv')   #writng the modified data into a csv file


saveRDS(object=df2,file="./data/fi.RDS")

# save.image(file="./data/fi1.RData") : saves all current ojects in memory

# use rm(list=ls())  to clear environment

mydata=readRDS(file='./data/fi.RDS')



names(mydata)
mydata[mydata$gender=="M",c("hostel","name")]
                             
which(mydata$gender=="M")
df2$name[order(df2$rpgm)]
df2$name[order(-df2$rpgm)]  #desc
df2[order(df2$excel),c("name","excel")]

mydata$dob=as.Date(mydata$dob,format="%d-%b-%y")
mydata
str(mydata)


