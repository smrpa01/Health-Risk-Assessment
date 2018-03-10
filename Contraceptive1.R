library(readxl)
Contraceptive1 <- read_excel("E:/Data Analytics/Project/Contraceptive1.xlsx")
View(Contraceptive1)
names(Contraceptive1)
x <- Contraceptive1$Percentage
lbl <- paste(Contraceptive1$Contraceptives,Contraceptive1$Percentage,"%")
pie(x,lbl,main = "Contraceptive use",col = rainbow(length(x)))
col = rainbow(length(x))
legend("topleft",Contraceptive1$Contraceptives,cex = 0.8,fill = col)
