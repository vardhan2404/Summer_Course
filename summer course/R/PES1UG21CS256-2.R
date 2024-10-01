a=as.integer(readline("Enter the value1: "))
op=readline("operator: ")
b=as.integer(readline("Enter the value2: "))

x=switch(
  op,
  "operator not defined",
  "+"=paste("The output after addition is: ", a+b),
  "-"=paste("The output after subraction is: ", a-b),
  "*"=paste("The output after multiplication is: ", a*b),
  "/"=paste("The output after division is: ", a/b),
  "%"=paste("The reminder is: ", a%%b),
  "//"=paste("The quotient is: ", a%/%b)
)
print(x)
