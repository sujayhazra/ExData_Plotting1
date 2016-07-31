# create plot4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(data$DateTime, data$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$DateTime, data$Sub_metering_2, col = 'red')
lines(data$DateTime, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1 ', 'Sub_metering_2 ', 'Sub_metering_3 '), lty = c(1,1), bty = "n", cex = .5)
plot(data$DateTime, data$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')


# Saving to file
dev.copy(png, file="C:/Sujay/Personal/Materials/Analytics/Coursera/Exploratory Data Analysis/Project1/plot4.png", height=480, width=480)
dev.off()