a = 4
b = 3
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%%b)   #acts like modulus operator 
print(a%/%b)  #just give integer value of division

a1<-8
a2<-12
t<-1:10
print(a1%in%t)  # %in% is an operator that tells if an element is present in array
print(a2%in%t)  # %in% is an operator that tells if an element is present in array

a = c(2,3,5,6,4)
b = c("a", "b", "c", "d")

a[1]
a[c(1,3)]
a[c(1:3)]
a[c(-1)]
a[-1]
a[c(-1,-3)]
a[c(-1:-3)]
a[-c(1)]


#sort
sort(a)

a=c(1,2,3)

#rep

r=rep(a,3)  #1 2 3 1 2 3 1 2 3
r
r=rep(a, each=3)  #1 1 1 2 2 2 3 3 3
r
r=c(rep(a[1],4), rep(a[2],1), rep(a[3],2))
r
r=rep(a, times=c(4,1,2))
r
r=rep(a, times=3)
r


x=list("apple", "banana", "cherry",1)
x
append(x, "orange")
append(x, "orange", after = 2)
x[1]
(x)[1]

#Arrays
a<-c(1:5)
a
a<-array(c(1:5,"a"), dim = c(3,2))
Td<-array(a, dim = c(3,2,3))
Td
Td<-array(a, dim = c(3,2,3,2))
Td
a<-matrix(1:5, dim = c(3,2), byrow = TRUE)

m=matrix(c(1,2,3,4,5,6,"a"))
m
m=matrix(c(1,2,3,4,5,6),nrow=3, ncol=3)
m
m=matrix(c(1,2,3,4,5,6),nrow=3, ncol=3, byrow=TRUE)
m
m[2,]#2nd row
m[,3]#3rd col
m[,]

a<-33
b<-200

#if (b>a)
#  print("b is greater than a")

#if(b>a){
#  print("b is greater than a")
#}

if (b>a){
  print("b is greater than a")
}else {
  print("b < a")
}

x=2
a=switch(
  x,
  "2"="hello a",
  "hello b",
  "hello c"
)
a

x=2
a=switch(
  x,
  "2"="hello a",
  "4"="hello b",
  "3"="hello c"
)
a

x=2
a=switch(
  x,
  "hello a",
  "hello b",
  "hello c"
)
a

x="1"
y="2"
a=switch(
  paste(x,y,sep=""),
  "9"="hello a",
  "21"="hello b",
  "12"="hello c"
)
a


x="0"
y="2"
a=switch(
  paste(x,y,sep=""),
  "9"="hello a",
  "21"="hello b",
  "12"="hello c"
)
a

#calculator using switch statement
x="abc"

df=data.frame(Name=c("A","B","C"), Age=c(22,33,23))
df1=data.frame(Name=c("d","e"), Age= c(21,20))
df3=rbind(df,df1)  #combines 2 dataframes row-wise
df3
df2=data.frame(SRN=c(25,30,55,66,88))
df4=cbind(df3,df2) #combines 2 dataframes column wise
df4
df6=data.frame(G=c(77,77,77,0,0))
df7=cbind(df4,df6)
length(df4)
df7
