x=c("Name, SRN, Sub1, Sub2, Sub3", "Vardhan, PES1UG21CS256, 20, 20, 20", "A, PES1UG21CS257, 19, 20, 19", "B, PES1UG21CS256, 18, 19, 18")
writeLines(x,"dataset.csv")
z=read.table("dataset.csv", sep=",", header = TRUE)
z

Name = readline("Name: ")
SRN = readline("SRN: ")
Sub1 = as.integer(readline("Sub1: "))
Sub2 = as.integer(readline("Sub2: "))
Sub3 = as.integer(readline("Sub3: "))


Total = Sub1 + Sub2 + Sub3
Total = paste(Total)
writeLines(Total, "total.txt")
