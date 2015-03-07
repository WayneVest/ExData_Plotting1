# Source the common_data script to leverage the commonData()
source('common_data.R')

# Generate the required sample data
sample_data = commonData()

# Open a png device
png(filename='./plot1.png', width = 480, height = 480, units = "px")

# Generate a histogram, labelling appropriately and colouring the bars red
hist(sample_data$Global_active_power, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='#FF0000')

# Close the device
dev.off()