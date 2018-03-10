library(readxl)
District_Contraceptive <- read_excel("E:/Data Analytics/Project/District_Contraceptive.xlsx")
View(District_Contraceptive)
qplot(x = District_Contraceptive$District , y = District_Contraceptive$`Any method`,
      data = District_Contraceptive , xlab = "Districts" , ylab = "Percentage" ,
      main = "Contraceptive prevalence Rate by district",ylim = c(0,100))+
  geom_bar(stat = "identity")+
  coord_flip()