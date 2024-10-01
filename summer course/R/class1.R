"hello"
print("welocme to R")
print("Today's monday")
sqrt(100)
floor(17.5)
ceiling(17.5)
abs(-30)
min(7,13)
max(28,9)
s1 <- print("hello")
s1
s1 <- "hello"
print(s1)
s1 <- print(13+30+28)
s1

n1<-10
n2<-13
n1+n2

n1;n2;n3 <- 10
n1=n2=n3 <- 10
n4<-n5<-n6<-"ABC"

n1<-"hello"
n2<-"everyone"
paste(n1,n2)

n1<-10
n2<-13
paste(n1,n2)
n1+n2

x=10.5
x
class(x)  #gives datatype
y=105L
y
class(y)

z<-TRUE
z
class(z)

name = readline("enter name")
name2 = readline("enter age")
#individually lines are running but tgt it wont execute
#use curly brackets so that all lines execute together
{
name = readline("enter name")
age = readline("enter age")

writeLines(name)
n1= readLines("D:/r-course/samplefile_1.txt") #error
}
c<-read.table("D:\\r-course\\class1.csv", header=TRUE, sep=",") #header=FALSE gives v1,v2,v3 as headings
c
View(c)    #displays in script/environment
head(c)    #displays first 6 rows
tail(c)    #displays last 6 rows
force(c)   #displays in prompt only not on new script
#write csv data into text file
write.table(c,"D:\\r-course\\class1.txt")
c

x<-data.frame(Name="Aditi", Age=20, Gender="Female")
x
#multiple data for same field
y<-data.frame(Name=c("Aditi","Anki","Anusha"), Age=c(20,19,20), Gender=c("F","F","F"))
y
dput(x)    #converts to R objects
dput(x, "D:/r-course/dput_file.r")  #if file is there, it'll write to that file, else it'll create one
#if current directory is same, give only file name, else give entire path
setwd("D:/r-course")
y<-dget("dput_file.r")
y

dump("x","D:/r-course/dump_file.r")

#to dump data frame and numbers tgt
y<-1:10
dump(c("x","y"),"D:/r-course/dump_tgt.r")
