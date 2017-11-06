parties1=c("bjp","congress","sp","aap")
length(parties)
states1=c("up","delhi","haryana","punjab","uk")
set.seed(1234)
n=ceiling(runif(length(parties1)*length(states1),25,50))
n

(col1=rep(parties1,each=5))
(col2=rep(states1,times=4))
cbind(col1,col2)
party=factor(col1)
states=factor(col2)
df1=data.frame(party,states,n)
df1
table(df1)  #not relevant here
ftable(df1) # meh
table(df1[,c("party","states")])
xtabs(n~party+states,data=df1)

statesel=c("up","delhi")
statesel
xtabs(n~party+states,data=df1,subset=party %in% c("aap","bjp"))
xtabs(n~party+states,data=df1,subset=states %in% statesel)
xtabs(n~party,data=df1,subset=party %in% c("bjp","aap"))
xtabs(n~party+states,data=df1,subset=party %in% c("aap","bjp"),drop.unused.levels = TRUE)
xtabs(n~party+states,data=df1,subset=party %in% c("aap","bjp")& states %in% c("delhi"),drop.unused.levels = TRUE)


matresults=xtabs(n~party+states,data=df1)
matresults
str(matresults)

margin.table(matresults,margin = NULL)
margin.table(matresults,margin=1)
margin.table(matresults,margin=2)
sum(margin.table(matresults,margin=1))
sum(matresults)


prop.table(matresults,margin=NULL)

round (prop.table(matresults,margin=NULL),2)
sum(prop.table(matresults,margin=NULL))

z=round(prop.table(matresults,margin=1),2)
y=round(prop.table(matresults,margin=2),2)
y
addmargins(y,1,sum)



