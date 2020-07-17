#Set up enviroment for R scrip  
# Packages for tidyverse 
library("tidyverse")
library("lubridate")


household <- read.csv("./data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", colClasses = c("character", "character", rep("numeric", 7)))

household <- mutate(household, DateTime = (dmy_hms(paste(household$Date , household$Time, sep = '_'))))

household %>% filter(DateTime >= ymd("2007-02-01") & DateTime <= ymd("2007-02-03")) %>% select(-Date, -Time) %>% select(8,1,2,3,4,5,6,7) -> household1

#Chart 1 
hist(household1$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red", breaks = 11)
dev.copy(png, file = "plot1.png")
dev.off()

