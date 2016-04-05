library(lattice)
setwd("~/Documents/tcr")
grades <- read.csv("grades.csv")

str (grades)
granola <- grades[which (grades$cake=="cookie granola goc"),]
par(mar=c(4,4,4,4))
boxplotByCake <- function (cakeName, initData){
  data <- initData[which (initData$cake==cakeName),]
  boxplot(data$aspect, data$taste, data$texture, data$packaging, data$qualityByPrice, lim=c(0,4), names=names(data[5:9]),
          #
          cex = 0.5, ylab="note", main=paste(cakeName, "grades from 0 to 4"), col=rainbow(5))
  text(1.2, 1.6, paste("Price:", data$price[1], "€
        Nb of cookies:", data$nb.of.cookies[1]))
}
boxplotByCake("cookie granola goc", grades)
