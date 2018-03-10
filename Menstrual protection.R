library(readxl)
Menstrual_protection <- read_excel("Menstrual protection.xlsx")
View(Menstrual_protection)
library(ggplot2)
qplot(x = Menstrual_protection$Residence,y = Menstrual_protection$Urban,data = Menstrual_protection,
      ylim = c(0,100),xlab = "menstruation protection",ylab = "Percentage",main = "Menstruation protection in Urban")+
  geom_bar(stat = "identity")
qplot(x = Menstrual_protection$Residence,y = Menstrual_protection$Rural,data = Menstrual_protection,
      ylim = c(0,100),xlab = "menstruation protection",ylab = "Percentage",main = "Menstruation protection in Rural")+
  geom_bar(stat = "identity")