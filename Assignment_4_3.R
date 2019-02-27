#states=rownames(USArrests)
#	Get states names with 'w'.
#	Get states names with 'W'.
#Prepare a histogram of the number of characters in each US state

#install.packages("tidyverse")
library(readxl)
setwd("C:/Sourav/Personal/Technology/R")
usarrests <- read_excel("USArrests.xlsx")
View(usarrests)
states<-rownames(USArrests)
print(states)
grep(pattern = "W", x = states, value = TRUE)
grep(pattern = "w", x = states, value = TRUE)
hist(nchar(states), main = "Histogram", xlab = "number of characters in US State names")
