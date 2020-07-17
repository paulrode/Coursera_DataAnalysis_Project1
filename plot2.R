#Set up enviroment for R scrip  
# Packages for tidyverse 
library("tidyverse")
library("lubridate")

#Chart 2
with(household1, plot(DateTime, Global_active_power, type = "l", xlab = "",  ylab = "Global Active Power (killowatts)"))
dev.copy(png, file = "plot2.png")
dev.off()
