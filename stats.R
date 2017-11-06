a=c("A","A","P","P","A","P","A")
b=c("red","blue","green","magenta","green","black","blue","black")
d=c(2,1,2,4,1,0,1,2,4,2)
a
b
d
?table
table(a)
table (b)
table(d)
cbind(table(d))
?graphics
barplot(table(d))
?barplot
?colours
?colors
demo("colors")

?barplot
barplot(table(d), width = 1, space = 0.5,
        names.arg = NULL, legend.text = NULL, beside = FALSE,
        horiz = FALSE, density = 5, angle = 90,
        col = "blue", border = par("fg"),
        main = NULL, sub = NULL, xlab = NULL, ylab = NULL,
        xlim = NULL, ylim = NULL, xpd = TRUE, log = "",
        axes = TRUE, axisnames = TRUE,
        cex.axis = par("cex.axis"), cex.names = par("cex.axis"),
        inside = TRUE, plot = TRUE, axis.lty = 0, offset = 0,
        add = FALSE, args.legend = NULL)
?barplot
marks=ceiling(runif(50,0,100))
marks
breaks=seq(0,100,by=10)
breaks
marks.cut=cut(marks,breaks)
marks.cut
marks.table=table(marks.cut)
cbind(marks.table)
