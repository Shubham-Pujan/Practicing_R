df1=read.csv(file=file.choose())
str(df1)(
colcls=c("numeric",NA,"factor","factor","logical","character","numeric","character","character",
         "character",rep("numeric",4))

df2=read.csv(file="./data/dsstudents.csv",colClasses =colcls,as.is = TRUE)
str(df2)
?read.csv

#date coloumn
as.Date("1967-20-15")
as.Date("1967-10-15")
as.Date("05-Oct-1967",format="%d-%b-%Y")
str(df2$dob)
head(df2$dob)
?head
df2$dob=as.Date(df2$dob,format="%d-%b-%y")
str(df2$dob)
?ceiling

df2$age= ceiling(as.numeric(( difftime(Sys.Date(),df2$dob,unit="weeks"))/52.25))
df2$age
df2[df2$age>30,][1]
x
