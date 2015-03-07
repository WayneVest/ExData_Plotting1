# Check if dplyr has been installed, and if not, install it
if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")}
# Load (or re-load) the dplyr library
library(dplyr)

commonData = function(){
    # Read in data
    data = read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', stringsAsFactors=FALSE)
    
    # Create a data.frame with only the relevant data
    sample_data = data %>%
        
        # Add a variable that contains the 'Date' variable converted to an R Date object, so that we can easily subset the data
        mutate(date_as_datetime = as.POSIXct(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')) %>%
        
        # Subset the data for observations between 01/02/2007 and 02/02/2007 (1st Feb 2007 - 2nd Feb 2007)
        filter(date_as_datetime >= as.POSIXct('2007-02-01-00:00:00') & date_as_datetime < as.POSIXct('2007-02-03-00:00:00'))
    
    return(sample_data)
}