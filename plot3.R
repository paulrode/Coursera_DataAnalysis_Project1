#Set up enviroment for R scrip  
# Packages for tidyverse 
library("tidyverse")
library("lubridate")

#Chart 3
par(mfrow = c(1,1))
plot(household1$DateTime, household1$Sub_metering_1, type = "l", xlab = "",  ylab = "Energy sub metering")
lines(household1$DateTime, household1$Sub_metering_2, type = "l", col = "red" )
lines(household1$DateTime, household1$Sub_metering_3, type = "l", col = "blue" )
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.75)
dev.copy(png, file = "plot3.png")
dev.off()
