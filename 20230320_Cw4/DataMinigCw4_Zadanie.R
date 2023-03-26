library(ggplot2)
library(forcast)
library(zoo)

cars$cubicinches <- as.integer(as.character(cars$cubicinches))

cars = cars%>% filter(cars[,i] > 0)

for(i in 1:ncol(cars)) {
  cars = cars%>%
    filter(i > 0)
}
