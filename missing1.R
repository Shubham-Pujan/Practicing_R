df=read.csv(file="./data/dsstudents2.csv")
df
str(df)
summary(df)
is.na(df)==F
table(is.na(df))
all(is.na(df))

all(is.na(df)==T)
?all

complete.cases(df)
!complete.cases(df)
sum(complete.cases(df))

mean(df$excel)
mean(df$excel,na.rm=T)
mean(df$excel,na.rm=T,trim=.2)
na.omit(df$excel)
na.omit(df)
?remove
colSums(is.na(df))
apply(df,2,function(x) sum(is.na(x)))
apply(is.na(df),2,sum)


df$excel[is.na(df$excel)]=mean(df$excel,na.rm=T)
df$excel

max(df$sql,na.rm=T)
df$sql
df$sql[is.na(df$sql)] =max(df$excel,na.rm=T)
  
df$sql


sapply(df,function(y) sum( length (which (is.na(y)))))
?sapply
