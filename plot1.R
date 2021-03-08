source("Setup.R")

# Plot 1

par(mfrow = c(1,1))
hist(power_days$Global_active_power, 
     col = "red", 
     xlab = "Global Active Power (KilloWatts)", 
     main = "Global Active Power")
dev.copy(png, file = "./plots/plot1.png")
dev.off()