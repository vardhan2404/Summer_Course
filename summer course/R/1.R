#getwd()
#setwd("C:\\Users\\kvard\\OneDrive\\Desktop\\R")
setwd("C:/Users/kvard/OneDrive/Desktop/R")
#getwd()
#library() #lists all libraries
#data() #lists all datasets
#data("AirPassengers")  #shows dataset AirPassengers
#data(mtcars)  #shows dataset mtcars and on clicking the element mtcars it shows it in tabular format
#View(mtcars)  #Dataset  in tabular form

#Different ways to assign value to variable:
a=10
a<-10
10->a

b=9
c=a+b

print(a)
print("ABC")
paste("c=",c)   #paste by default seperates its arguments by a additional " "(space) in its output 
paste("c=",c, sep="")   #to modify the seperation in paste we can use sep argument
paste0("c=",c)    #pastes without the default seperation of " "
print(paste("c=",c))
print("R Language")
sprintf("c=%d",c)
cat("c=",c)   # concatination 
cat("c=",c, sep="")   # concatination with modified seperator

x<-10
class(x)

x<-10L
class(x)

x<-9i+3
class(x)

x<-9+3i
class(x)

x<-TRUE
class(x)

x<-"abc"
class(x)

x<-'a'
class(x)

#RAW Datatype
r=charToRaw("Hello")
r
x=rawToChar(r)
x
x=rawToBits(r)
x


x=readline("Enter your Name: ")
y=readline("Enter your SRN: ")
print(x)

{
  x=readline("Enter your Name: ")
  y=readline("Enter your SRN: ")
  print(paste(x,y))
}

z<-readLines("1.txt")  
#If you don't give empty line at the end of file you'll get this warning: 
#  Warning message:
#  In readLines('1.txt') : incomplete final line found on '1.txt'
#else: you won't get the warning
z

writeLines(z, "2.txt")
z1<-readLines("2.txt")  
z1
z = append(z, "abc")
z


writeLines(z, "2.txt")
read.csv("1.csv")
#If you don't give empty line at the end of file you'll get this warning: 
#  Warning message:
#  In readLines('1.txt') : incomplete final line found on '1.txt'
#else: you won't get the warning
z=read.table("1.csv")
z=read.table("1.csv", sep=",")
z=read.table("1.csv", sep=",", header=TRUE)
z

head(z)
tail(z)


a<-readLines(con<-file("1.txt"))


max(5, 10, 15)
min(5,10,15)
sqrt(16)
abs(-4.7)
ceiling(1.4)
floor(1.4)

letters
LETTERS
letters[1:10]

month.abb
month.name
months.Date()

weekdays()
weekdays.Date()
weekdays.POSIXt()


x<-data.frame(Name = "Mr. A", Gender = "Male", Age=35)
dput(x)
dput(x, file="dput_file.r")
y = dget("dput_file.r")
y

#dump
x<-100
d<-data.frame(Name = "Mr. A", Gender = "Male", Age=35)
dump(c("x","d"), file="dump_file1.r")

#1.create a dataset
#2.fetch from dataset and display it
#3.tell user to enter name, srn and 3 sub marks
#4.total marks should be saved in a seperate file
#5.

w<-read.table("1.csv", header = TRUE,sep=",")
head(w)
tail(w)
View(w)

x <- data.frame(Name = "Mr. A", Gender = "Male", Age=35)
dput(x)
x

y <- dput(x,"dput1.r")
y
x<-1:10
d <- data.frame(Name = "Mr. A", Gender = "Male", Age=35)

dump(c("x", "d"), file = "dump_data.r")
dput(c(x,d), file = "dput_1.r")
x=0
d=0
source("dump_data.r")
x
d
str(d) 

ndf=data.frame(name=c('A','B'),age=c(10,20))
ndf1=data.frame(name=c('C','D'),age=c(30,40))
ndf2=rbind(ndf,ndf1)
ndf4=data.frame(SRN=c(1,2,3,4))
ndf3=cbind(ndf2,ndf4)
ndf3
ndf5=cbind(ndf3,PRN=c(4,3,2,1))
ndf5
ndf6=cbind(ndf5,c(3,4,1,2))
ndf6
x=paste0("a","b")
x
x=print("a")
x

write.table(ndf5,"data.txt")
total=ndf5$SRN+ndf5$prn
