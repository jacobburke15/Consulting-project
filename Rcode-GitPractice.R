library(dplyr)

plant <- PlantGrowth

group1 <- filter(PlantGrowth, group == "ctrl")
group2 <- filter(PlantGrowth, group == "trt1")
group3 <- filter(PlantGrowth, group == "trt2")

t.test(group1$weight, group2$weight)
t.test(group1$weight, group3$weight)
