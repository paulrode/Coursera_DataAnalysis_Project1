#Set up enviroment for R scrip  
# Packages for tidyverse 
library("tidyverse")
library("lubridate")

#Chart 4
par(mfrow = c(2,2) )

#Chart 4-1
with(household1, plot(DateTime, Global_active_power, type = "l", xlab = "",  ylab = "Global Active Power (killowatts)"))

#Chart 4-2
with(household1, plot(DateTime, Voltage, type = "l", xlab = "datetime",  ylab = "Voltage"))

#Chart 4-3
plot(household1$DateTime, household1$Sub_metering_1, type = "l", xlab = "",  ylab = "Energy sub metering")
lines(household1$DateTime, household1$Sub_metering_2, type = "l", col = "red" )
lines(household1$DateTime, household1$Sub_metering_3, type = "l", col = "blue" )
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.5)

#Chart 4-4
with(household1, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))

dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()
