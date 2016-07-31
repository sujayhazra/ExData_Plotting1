# convert data and time to specific format
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

# create plot2
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')

# Saving to file
dev.copy(png, file="C:/Sujay/Personal/Materials/Analytics/Coursera/Exploratory Data Analysis/Project1/plot2.png", height=480, width=480)
dev.off()