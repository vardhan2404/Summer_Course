x=c("Name, SRN, Sub1, Sub2, Sub3", "V, PES1UG21CS256, 90, 95, 100", "A, PES1UG21CS257, 93, 85, 70", "B, PES1UG21CS258, 91, 74, 83", "C, PES1UG21CS259, 70, 96, 83", "D, PES1UG21CS260, 96, 75, 52", "E, PES1UG21CS261, 80, 65, 95", "F, PES1UG21CS262, 80, 97, 62")
writeLines(x, "data.csv")
data=read.table("data.csv", sep=",", header = TRUE)

pairs(~Sub1+Sub2+Sub3, data=data, main = "Scatterplot of sub1 sub 2 and sub 3", labels = c("Marks in Subject1","Marks in Subject2","Marks in Subject3"), gap=0.3 )

ggplot(data=data, aes(x=Name, y=Sub1, color=SRN)) + geom_point() + labs(title = "Subject 1 marks of Different Students", x = "Name of Students", y = "Subject-1 Marks")
ggplot(data=data, aes(x=Name, y=Sub2, color = SRN)) + geom_point() + labs(title = "Subject 2 marks of Different Students", x = "Name of Students", y = "Subject-2 Marks")
ggplot(data = data, aes(x=Name, y=Sub3, color = SRN)) + geom_point() + labs(title = "Subject 3 marks of Different Students", x= "Name of Students", y = "Subject-3 Marks")

plot_ly(data = data, x = ~Name, y=~Sub1, type = "scatter", mode = "", color = ~SRN, colors = c("red", "yellow", "green", "blue", "black")) #without trace
add_trace(fig, type = "scatter", mode = "markers+lines") #with trace

?pairs
