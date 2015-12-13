source('loaddata.R')

data <- loadData()

png(file = "plot4.png", width = 480, height = 480, units = "px")

## Setting 4 graphs
par(mfrow = c(2, 2))

## Graph 1

     plot(data$DateTime,
          data$Global_active_power,
          type = "l",
          xlab = "",
          ylab = "Global Active Power")

## Graph 2

     plot(data$DateTime,
          data$Voltage,
          type = "l",
          xlab = "datetime",
          ylab = "Voltage")

## Graph 3
     plot(data$DateTime,
          data$Sub_metering_1,
          type = "l",
          xlab = "",
          ylab = "Energy sub metering")

     points(data$DateTime,
            type = "l",
            data$Sub_metering_2,
            col = "red")

     points(data$DateTime,
            type = "l",
            data$Sub_metering_3,
            col = "blue")

legend("topright", col = c("black", "blue", "red"),
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1)

## Graph 4
with(DT,
     plot(data$DateTime,
          data$Global_reactive_power,
          type = "l",
          xlab = "datetime",
          ylab = "Global_reactive_power"))

dev.off() 