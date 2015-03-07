# Source the common_data script to leverage the commonData()
source('common_data.R')

# Generate the required sample data
sample_data = commonData()

# Open a new png device
png(filename='./plot2.png', width = 480, height = 480, units = "px")

# Generate a line plot
plot(sample_data$date_as_datetime, sample_data$Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)', cex=0.5)

# Close the device
dev.off()