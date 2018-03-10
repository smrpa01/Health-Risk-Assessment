library(readr)
MMR97_2009 <- read_csv("MMR97-2009.csv")
View(MMR97_2009)
qplot(MMR97_2009$`MATERNAL MORTALITY RATIO (per 1-00-000 live births)-1997-98`,data = MMR97_2009,ylim = c(0,2.5))
qplot(MMR97_2009$`MATERNAL MORTALITY RATIO (per 1-00-000 live births)-1999-01`,data = MMR97_2009,ylim = c(0,2.5))
qplot(MMR97_2009$`MATERNAL MORTALITY RATIO (per 1-00-000 live births)-1999-01`,data = MMR97_2009,ylim = c(0,2.5))+
  geom_histogram(binwidth = 10,fill = 'white' , colour = 'black')
p1 <- qplot(x = MMR97_2009$`India/States`,y = MMR97_2009$`MATERNAL MORTALITY RATIO (per 1-00-000 live births)-1997-98`,
            data = MMR97_2009 ,colour = India/States) + scale_x_discrete(labels = abbreviate) + geom_line()
qplot(x = MMR97_2009$`India/States`,y = MMR97_2009$`MATERNAL MORTALITY RATIO (per 1-00-000 live births)-1997-98`,
      data = MMR97_2009 ,colour = MMR97_2009$`India/States`,
      xlab = "States",ylab = "Per 100000 live birth",
      main = "Maternal mortality ratio in 2009") + scale_x_discrete(labels = abbreviate) + geom_line()