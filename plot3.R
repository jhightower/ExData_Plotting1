source('loaddata.R')

data <- loadData()

png(
  file = "plot3.png", width = 480, height = 480, units = "px"
)

plot(
  data$DateTime,
  data$Sub_metering_1,
  type = "l",
  xlab = "",
  ylab = "Energy sub metering"
)

points(data$DateTime,
       type = "l",
       data$Sub_metering_2,
       col = "red")

points(data$DateTime,
       type = "l",
       data$Sub_metering_3,
       col = "blue")

legend(
  "topright", col = c("black", "blue", "red"),
  legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1
)

dev.off()