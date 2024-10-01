x<-c(141,131,200,156,108,116,55,143,182,130)
y<-c(62,85,56,21,47,17,76,92,62,58)
z<-c(6,8,5,2,4,1,7,9,6,5)

pairs(~x+y+z) #gives plots in matrix form. if length of x,y,z is not equal then it gives error. 

#scatterplot of x
plot(x=x,xlab="weight", ylab="Milage", main="Wt vs Milage")

data<-attitude[c("rating","complaints","raises","learning")]   #fetching n storing only 2 col out of all col in dataset
a<-attitude$rating
b<-attitude$complaints
c<-attitude$learning
d<-attitude$raises
pairs(~data$rating+data$complaints+data$raises+data$learning)
pairs(~a+b+c+d, main="Scatterplot matrix")
pairs(~rating+complaints+learning+raises, data=attitude)

install.packages("ggplot2")
library(ggplot2)
ggplot(data = mtcars, aes(x=hp, y = mpg, col=hp))+geom_point()+labs(title = "Miles per gallon", x = "Horse Power", y="Miles per Gallon")
#labs-labels


install.packages("plotly")
library(plotly)
fig<-plot_ly(data = mtcars, x=~disp, y=~hp, color = ~gear)

fig

add_trace(fig, type = "scatter", mode="markers+lines")


fig<-plot_ly(data = iris, x = ~Sepal.Length, y=~Petal.Length, symbol = ~Species, symbols = c('circle','x','o') )
#symbol- classification of poits    symbols-how each point should look
fig
plot(iris$Petal.Length, type = "b", col="red", lwd=2, )
lines(iris$Sepal.Length, type="b",col = "blue")


fig<-plot_ly(data = mtcars, x=~disp, y=~hp, z= ~cyl, color = ~hp)
fig

fig<-plot_ly(data = mtcars, x=~disp, y=~hp, z= ~cyl, color = ~hp, colors = c("#BF382E","#0C4B8E"))
fig

fig<-plot_ly(mtcars, labels=~hp, values=~disp, type="pie" )
fig


fig<-plot_ly(mtcars, x=~hp, y=~disp, type = "scatter" )
fig

fig<-plot_ly(mtcars, x=~hp, y=~disp, type = "bar" )
fig


fig<-plot_ly(mtcars, x=~hp, y=~disp, type = "box" )
fig

?mtcars
?plotly
summary(mtcars)[1]
summary(mtcars)[1,1]

dim(mtcars)
dim(mtcars)[1]

names(mtcars)
names(mtcars)[1:10]
names(mtcars[1:10])

rownames(mtcars)
rownames(mtcars)[1:10]
rownames(mtcars[1:10])


Data_Cars <- mtcars
mean(Data_Cars$wt)
median(Data_Cars$wt)
sum(1:3)
max(1:10)
min(10:-1)
mode(1:5)

table(Data_Cars$wt)#Displays sorted column based on values
-table(Data_Cars$wt)#Displays in descending order of values of column
sort(-table(Data_Cars$wt))#Sorts based on frequency of repetition of an element
names(sort(table(Data_Cars$wt)))[1]
names(sort(-table(Data_Cars$wt)))[1]

#Scatter plot from csv file min 3 columns
#Scatter plot using ggplot geom_point, geom_area/geom_line atleast 4 attributes
#trace with plot_ly
data <-mtcars[,c('wt','mpg')]
data                      

Data_Cars <- mtcars
which.max(Data_Cars$hp)
rownames(Data_Cars)[which.max(Data_Cars$hp)]
rownames(Data_Cars)[which.min(Data_Cars$hp)]

pie(1:150)
mtcars[,1]
