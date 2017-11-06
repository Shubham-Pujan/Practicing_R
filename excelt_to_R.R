getwd()
df1=read.csv(file ='./data/dsstudents.csv')
str(df1)
df2=read.csv(file='./data/dsstudents.csv',stringsAsFactors = FALSE)
str(df2)
head(df2)[1:4]
table(df2$gender)

#convert gender and course into factors
df2$course=factor(df2$course)
str(df2)
df2$gender=factor(df2$gender)
table(df2$course,df2$gender)
df2['name']
df2['gender']

names(df2)

rownames(df2)
df2$rollno

df2$rollno[df2$name=='Lalit Sahni'] # find roll no pf lalit

df2$rollno[df2$name=='Lalit Sahni']=17013 #change rollno
df2$rollno
fix(df2) # edit dataframe
df2
