source("Setup.R")

# Plot 2

par(mfrow = c(1,1))
with(power_days, 
     plot(Time, Global_active_power, type = "l",
          xlab = "",
          ylab = "Global Active Power (kilowatts)"))
dev.copy(png, file = "./plots/plot2.png")
dev.off()