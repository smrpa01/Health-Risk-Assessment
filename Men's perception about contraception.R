library(readxl)
Men_s_perception_about_contraception <- read_excel("Men's perception about contraception.xlsx")
View(Men_s_perception_about_contraception)
x1 <- Men_s_perception_about_contraception$Urban
lbl1 <- paste(Men_s_perception_about_contraception$Residence,x1,"%")
col = rainbow(length(x))
pie(x1,lbl1,main = "Men's perception about Contraception in Urban",col = rainbow(length(x)))
legend("topleft",Men_s_perception_about_contraception$Residence,cex = 0.5,fill = col)
