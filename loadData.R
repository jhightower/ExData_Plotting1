library(data.table)

loadData <- function() {
  localDt<-read.csv("household_power_consumption.txt",
                header=TRUE,sep=";",
                colClasses=c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'),
                na.strings="?")
  localDt <- localDt[localDt$Date %in% c('1/2/2007','2/2/2007'),]
  localDt$DateTime <- as.POSIXct(paste(localDt$Date,localDt$Time),format="%d/%m/%Y %H:%M:%S")
  localDt
}