library(lattice)
setwd("~/Documents/tcr")
grades <- read.csv("grades.csv")

str (grades)
<<<<<<< HEAD

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

=======
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
>>>>>>> 327923dcc2f6c4517ad19ab90bd7a85e708f3522
