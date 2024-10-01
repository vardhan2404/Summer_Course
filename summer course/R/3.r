#pie
a =c(20,35,10,90,20,35)
pie(a)
pie(a,labels=a)
b = c("s1","s2","s3","s4")

png(filename = "abc.png")
pie(a,labels = b)
pie(a,col=c("blue","red","green","orange","yellow","lavender"),init.angle = 180,density = c(5,4,3,21,7,46))
d = c(5,4,3,21,7,46)
ang = c(40,45,23,180,90)
pie(a,density = d,angle = ang,lty=2,border="red", main = "pie")
colors = c("blue","red","green","orange","yellow","lavender")
legend("topleft",b,fill = colors,cex = 0.5)

dev.off()

install.packages("plotrix")
library("plotrix")
a = c(20,35,10,90)
b = c("s1", "s2", "s3", "s4")

pie3D(a)
pie3D(a, theta = 0.7)
pie3D(a, theta = 1.5, radius = 1)
pie3D(a, theta = 1.5, radius = 1, height = 0.4)
pie3D(a, theta = 1.5, radius = 1.4, height = 0.4)
pie3D(a, theta = 0.5, radius = 0.5, height = 0.1, explode=0.2, labels = b, main = "3D PIE Chart", col = c("red", "blue"))
legend("topleft",a,fill = colors,cex = 0.5)
pie(mtcars$mpg, radius =1.25, labels = mtcars$disp)

ds=read.csv("dataset.csv")
pie=pie3D(ds$Sub1, labels = ds$Name)

x<-c(2,4,6,8)
y<-c("A","B","C","D")

barplot(x,names.arg = y, main = "Barplot", col = c("red","yellow","green","blue"), density = c(5,10,15,20), angle = c(0,45,90,135), width = c(1,2), ylim = c(0,10), xlim = c(0,7))
barplot(x,names.arg = y, main = "Barplot", xlab = "No.s", ylab = "Names" )
barplot(x,names.arg = y, main = "Barplot", width = c(1,10,5) )
barplot(x,names.arg = y, main = "Barplot", width = c(3,6,9,12))

yname<-c("A","B","C")
val<-matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3, ncol = )
barplot(val, names.arg = yname, main = "Barplot",col = color1 <- c("red","yellow","green"), xlab = "No.s", ylab = "Names", border = "blue")

hist(c(10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,50,60,90,80,125,150,175,200), breaks = 5, border = "green", density = c(5,10,15,20), col = color1, main = "histogram")
?hist
#line graph

v<-c(13,22,28,7,31)
w<-c(11,13,32,6,35)
x<-c(12,22,15,34,35)

plot(v)
plot(v, type = "l", lty=2, lwd = 2) #lty- line type    lwd - line width
plot(v, type="b")
plot(v, type="c")
plot(v, type = "p")
plot(v, type = "p", lwd=c(5,10,15,20))
plot(v, type="s")
plot(v, type="S")
plot(v, type="o")
plot(v, type="h")
plot(v, type = "n")
#lines(w, type="o")
lines(x, type="s")

plot(v, type="l", xlab = "x", ylab = "y", ylim = c(1,20), xlim=c(1,20))
plot(v, type="l", xlab = "x", ylab = "y", ylim = c(1,40), xlim=c(1,3))
plot(1:1200, type = "p", lwd = 100:1)
plot(1:1000, type = "p", lwd = 1000:1)
plot(1:1000, type = "p", lwd = 1:1000)


my_dataframe <- data.frame(
  Name = c("A", "B", "C", "D"),
  Age = c(40, 25, 19, 55),
  Gender = c("M", "F", "M", "F")
)

seq_len(nrow(my_dataframe))

nrow(my_dataframe)

paste(my_dataframe[1,])

for (i in seq_len(nrow(my_dataframe))) {
  current_row <- my_dataframe[i, ]
  print(paste("The current row is:", toString(current_row)))
  
}

#For loop
for (val in 1:5){
  print(val)
}

week <- c('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday')
m=matrix(1:100, nrow = 10, ncol = 10)
for (day in week) {
  print(day)
}

for (i in m) {
  for (j in i){
    print(j)
  }
}

i <- 1
while(i<5){
  print(i)
  i=i+1
}

fname <- function(){
  print("Hello World")
}
fname()

fname <- function(fname){
  paste(fname, " college")
}
fname("PES")

cname <- function(name){
  paste(name, " college")
}
cname("PES")



callback_func <- function(callback){
  callback("PES")
}
callback_func(cname)

i<-5
j<-5

recursion <- function(i){
  if (i>1){
    i=i-1
    print(i)
    recursion(i)
  }
}
recursion(i)
recursion(j)

tri_recursion <- function(k) {
  if(k >0) {
    result <- k + tri_recursion(k -1)
    print(result)
  }else{
    result =0
    return(result)
  }
}
tri_recursion(6)
