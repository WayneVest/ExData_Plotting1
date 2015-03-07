# Source the common_data script to leverage the commonData()
source('common_data.R')

# Generate the required sample data
sample_data = commonData()

# Open a new png device
png(filename='./plot4.png', width = 480, height = 480, units = "px")

# Set the plot arrangement
par(mfrow=c(2,2))

# Generate the first line plot
plot(sample_data$date_as_datetime, sample_data$Global_active_power, type='l', xlab='', ylab='Global Active Power', cex=0.5)

# Generate the second line plot
plot(sample_data$date_as_datetime, sample_data$Voltage, type='l', xlab='datetime', ylab='Voltage', cex=0.5)

# Generate the third line plot with only the Sub_metering_1 data
plot(sample_data$date_as_datetime, sample_data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering', cex=0.5)

# Add the Sub_metering_2 data
points(sample_data$date_as_datetime, sample_data$Sub_metering_2, type='l', col='#FF0000')

# Add the Sub_metering_3 data
points(sample_data$date_as_datetime, sample_data$Sub_metering_3, type='l', col='#0000FF')

# Add a legend
legend("topright", lty=c(1,1,1), col=c('#000000', "#FF0000", '#0000FF'), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty='n')

# Generate the fourth line plot
plot(sample_data$date_as_datetime, sample_data$Global_reactive_power, type='l', xlab='datetime', ylab='Global_reactive_power', cex=0.5)

# Close the device
dev.off()