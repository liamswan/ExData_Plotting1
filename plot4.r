source("Setup.R")

# Plot 4
par(mfrow = c(2,2))
 
with(power_days, 
     plot(Time, Global_active_power, type = "l",
          xlab = "",
          ylab = "Global Active Power (kilowatts)"))

with(power_days, 
     plot(Time, Voltage, type = "l", xlab = "datetime"))    

plot(power_days$Time, power_days$Sub_metering_1, type = "l", col = "black",
     xlab = "",
     ylab = "Energy sub metering")
lines(power_days$Time, power_days$Sub_metering_2, type = "l", col = "red")
lines(power_days$Time, power_days$Sub_metering_3, type = "l", col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),
       lty = 1, lwd = 2,
       cex = 0.7)

with(power_days, 
     plot(Time, Global_reactive_power, type = "l", xlab = "datetime"))  

dev.copy(png, file = "./plots/plot4.png")
dev.off()