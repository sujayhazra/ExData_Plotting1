# set working directory
setwd("C:/Sujay/Personal/Materials/Analytics/Coursera/Exploratory Data Analysis/Project1")

# download and unzip data
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, destfile = "C:/Sujay/Personal/Materials/Analytics/Coursera/Exploratory Data Analysis/Project1/household_power_consumption.zip")
unzip("C:/Sujay/Personal/Materials/Analytics/Coursera/Exploratory Data Analysis/Project1/household_power_consumption.zip")

# checking files
# dir()
# "household_power_consumption.txt" "household_power_consumption.zip" "plot1.R" 

# read data into R
files <- file("C:/Sujay/Personal/Materials/Analytics/Coursera/Exploratory Data Analysis/Project1/household_power_consumption.txt")
data <- read.table(text = grep("^[1,2]/2/2007",readLines(files),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')

# check the values of Date field
# summary(data$Date)
# 1/2/2007 2/2/2007 
# 1440     1440
# nrow(data)
# 2880

# create histogram, plot1
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

# Saving to file
dev.copy(png, file="C:/Sujay/Personal/Materials/Analytics/Coursera/Exploratory Data Analysis/Project1/plot1.png", height=480, width=480)
dev.off()