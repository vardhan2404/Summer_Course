#boxplot - gets entire data with median 
boxplot(mpg ~ carb, data = mtcars, xlab = "carb", ylab = "mpg", notch = TRUE, main = "boxplot", col=c("red","blue"))

colors=c("green", "lightgreen", "lightblue", "darkblue", "darkgreen","blue")
#notch=TRUE will constrict at the median, changes accodring to median, default False
boxplot(mtcars$mpg~mtcars$gear, notch=TRUE, xlab="carb", ylab="mpg", main="BOXPLOT", col=colors)

legend("topright",legend =unique(mtcars$gear), fill=colors, title="carb", border = "black", cex=0.7)
#unique doesnt allow repetition of values in the legend

x=c(1,2,3,4,5,6) #20 is not getting plotted as it is an outlier and is highly greater than the other values 
y=c(1,2,3,6,6,6)
boxplot(x~y)

#boxplot is violin plotting 
library(vioplot)

x1<-mtcars$mpg[mtcars$cyl==4]
x2<-mtcars$mpg[mtcars$cyl==6]
x3<-mtcars$mpg[mtcars$cyl==8]
vioplot(x1,x2,x3,names=c("4 cyl","6 cyl","8 cyl")) 
title("Violin plot example")

#bagplot
library(aplpack)
attach(mtcars)
bagplot(disp,hp,xlab="Car wt", ylab="Miles per gallon", main="2D BAG PLOT")
