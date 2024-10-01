x=c("Name, SRN, Sub1, Sub2, Sub3", "V, PES1UG21CS256, 90, 95, 100", "A, PES1UG21CS257, 93, 85, 70", "B, PES1UG21CS258, 91, 74, 83", "C, PES1UG21CS259, 70, 96, 83", "D, PES1UG21CS260, 96, 75, 52", "E, PES1UG21CS261, 80, 65, 95", "F, PES1UG21CS262, 80, 97, 62")
writeLines(x, "data.csv")
data=read.table("data.csv", sep=",", header = TRUE)

pie3D(data$Sub1, labels = data$Name, main = "Pie Chart of marks of Students", radius = 1, height = 0.1, border = "black", explode = 0.3)

plot(data$Sub1, main = "Individual Marks of Students in 3 subjects", type = "b", xlim = c(1,7), ylim = c(50,100), col = "red", lwd = 3, ylab = "Student Marks", xlab = "Student No.")
lines(data$Sub2, type = "b", col = "blue", lwd = 3)
lines(data$Sub3, type = "b", lwd =3)
colors=c("red","blue", "black")
b=c("Sub1", "Sub2", "Sub3")
legend("bottomleft",b,fill = colors,cex = 1)

total = data$Sub1 + data$Sub2 + data$Sub3
hist(total, xlim = c(220,290), ylim = c(0,10), main = "Histogram of Total Marks of Students", breaks = 5, density = c(15,17,19,21), col=c("darkred","purple","darkorange","yellowgreen", "green", "blue", "darkgreen"), ylab = "No. of Students", xlab = "Total Marks")

     