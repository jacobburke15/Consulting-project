
plantdata <- PlantGrowth


library(dplyr)

group1 <- filter(plantdata, group == 'ctrl')

group2 <- filter(plantdata, group == 'trt1')

group3 <- filter(plantdata, group == 'trt2')

t.test(group1$weight, group2$weight)

t.test(group1$weight, group3$weight)

plantdata

fert1 <- c(rep(0, 10), rep(1, 10), rep(0, 10))
fert2 <- c(rep(0,10), rep(0,10), rep(1,10))
plantdata <- cbind(plantdata, fert1, fert2)
plantdata 

reg <- lm(weight ~ fert1 + fert2, data = plantdata)
summary(reg)
