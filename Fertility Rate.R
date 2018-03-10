library(readxl)
Fertility_Rate <- read_excel("E:/Data Analytics/Project/Fertility Rate.xlsx")
View(Fertility_Rate)
names(Fertility_Rate)
mydata1 <- data.frame(Fertility_Rate$Schooling,Fertility_Rate$`no. of children born till date`)
mydata1$Fertility_Rate.Schooling <- factor(mydata1$Fertility_Rate.Schooling,
                                           levels = c("No schooling","<5 years complete","5-9 years complete",
                                                      "10-11 years complete","12 or more years complete"))
qplot(x = mydata1$Fertility_Rate.Schooling , y = mydata1$Fertility_Rate..no..of.children.born.till.date.,
      data = Fertility_Rate , color = I("coral2"))+geom_bar(stat = "identity")+xlab("Schooling") +
  ylab("Total no. of children")+ggtitle("Fertility rate according to schooling")
