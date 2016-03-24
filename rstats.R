library(lattice)
setwd("~/Documents/tcr")
grades <- read.csv("grades.csv")

str (grades)

boxplotByCake <- function (cakeName, initData){
  data <- initData[which (initData$cake==cakeName),]
  priceByCookie<-round(data$price[1]/data$nb.of.cookies[1],2)
  par(mar=c(4,4,4,4))
  boxplot(data$aspect, data$taste, data$texture, data$packaging, data$qualityByPrice, lim=c(0,4), names=names(data[5:9]),
          cex = 0.5, ylab="note", main=paste(cakeName, "grades from 0 to 4"), col=rainbow(5))
  text(0.8, 1.6, paste("Price:", data$price[1], "€
         Nb of cookies:", data$nb.of.cookies[1], "
                  Price by cookie:", priceByCookie,"€"))
}

boxplotByCake("churros con choc", grades)

cakeList <- unique(grades$cake)
length <- length(unique(grades$cake))
cakeList[length]

for (i in cakeList){
  print (i)
  boxplotByCake(i, grades)
  meanCake <-mean(grades$total[which (grades$cake==i)])
  print (meanCake)
}

