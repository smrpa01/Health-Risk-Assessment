#We import the library readxl
library(readxl)
Anaemia <- read_excel("Anaemia.xlsx")
View(Anaemia)
names(Anaemia)
#we import the library ggplot
library(ggplot2)
#Anaemia in Urban areas
qplot(x = Anaemia$Residence , y = Anaemia$Urban , data = Anaemia , xlab = "haemoglobin level",
      ylab = "Percentage",main = "Anaemia in Urban")+geom_bar(stat = "identity")
#Anaemia in rural areas
qplot(x = Anaemia$Residence , y = Anaemia$Rural , data = Anaemia , xlab = "haemoglobin level",
      ylab = "Percentage",main = "Anaemia in Rural")+geom_bar(stat = "identity")