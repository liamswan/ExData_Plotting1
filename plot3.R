source("Setup.R")

# Plot 3

par(mfrow = c(1,1))
plot(power_days$Time, power_days$Sub_metering_1, type = "l", col = "black",
     xlab = "",
     ylab = "Energy sub metering")
lines(power_days$Time, power_days$Sub_metering_2, type = "l", col = "red")
lines(power_days$Time, power_days$Sub_metering_3, type = "l", col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),lty = 1, lwd = 2)
dev.copy(png, file = "./plots/plot3.png")
dev.off()