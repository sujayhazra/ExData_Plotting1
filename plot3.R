# create plot3
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$DateTime, data$Sub_metering_2, col = 'red')
lines(data$DateTime, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)

# Saving to file
dev.copy(png, file="C:/Sujay/Personal/Materials/Analytics/Coursera/Exploratory Data Analysis/Project1/plot3.png", height=480, width=480)
dev.off()