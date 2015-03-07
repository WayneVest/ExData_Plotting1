# ExData_Plotting1 - CodeBook
Programming assignment for the Johns Hopkins Exploritory Data Analysis course.
- - -

## What this document includes and excludes
The particualr variables in this dataset, which comprise columns 1-9 (Date, Time, Global_active_power, Global_reactive_power, Voltage, Global_intensity, Sub_metering_1, Sub_metering_2 and Sub_metering_3), are specifically detailed in the information found here: https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption and are therefore not specifically detailed here.

Any added variables will be specifically detailed in this document, along with the method for defining and deriving any such variables.

Where the data has been subsetted, or in any other way mutated, the method(s) will be detailed in this document.

This common, cleaned, data is used for the following:
- plot1.R
- plot2.R
- plot3.R
- plot4.R

- - -

### common_data.R
This dataset is a clean version of the raw data, including only the desired observations that are to be used in all plots (observations from 1st Feb 2007 until 2nd Feb 2007, inclusive).

The common_data.R script fulfils all of the steps in this section.


#### Data cleaning

##### Raw data structure
All R scripts expect the raw data to be available in the present working directory, in a .txt file called 'household_power_consumption.txt', as extracted (and unadulterated) from the .zip file obtained here: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip.

##### Step 1: Importing the data
The .txt file contains a header row - this header row is used to define the variable names.

The header row, and each observation row consists of semi-colon-separated values. These semi-colons were used to define the variable separations.

The raw data contains some observations with variable values markes as '?'. These values were interpreted to be of no value and were read in as NA values.

##### Step 2: Converting the 'Date' variables to R Date objects
In preparation for subsetting the data, the 'Date' values for each observation were explicitly converted to R Date objects. The main reason for this was to simplify comparitive methods based on date value. The converted values were appended to the data set in a new variable labelled 'date_as_date', leaving the original 'Date' values unchanged.

##### Step 3: Subsetting to obtain the desired observations
A subset of observations were selected where the 'date_as_date' values fall as equal to or greater than 1st Feb 2007 and less than or equal to 2nd Feb 2007.


#### Analysis
No analysis was performed on this common dataset.


#### Variable definitions

##### Date
- represents the [,1] variable found in the 'household_power_consumption.txt' file.
- class = character
- example value = '1/2/2007'

##### Time
- represents the [,2] variable found in the 'household_power_consumption.txt' file.
- class = character
- example value = '00:00:00'

##### Global_active_power
- represents the [,3] variable found in the 'household_power_consumption.txt' file.
- class = numeric
- example value = 0.326

##### Global_reactive_power
- represents the [,4] variable found in the 'household_power_consumption.txt' file.
- class = numeric
- example value = 0.128

##### Voltage
- represents the [,5] variable found in the 'household_power_consumption.txt' file.
- class = numeric
- example value = 243.15

##### Global_intensity
- represents the [,6] variable found in the 'household_power_consumption.txt' file.
- class = numeric
- example value = 1.4

##### Sub_metering_1
- represents the [,7] variable found in the 'household_power_consumption.txt' file.
- class = numeric
- example value = 0

##### Sub_metering_2
- represents the [,8] variable found in the 'household_power_consumption.txt' file.
- class = numeric
- example value = 0

##### Sub_metering_3
- represents the [,9] variable found in the 'household_power_consumption.txt' file.
- class = numeric
- example value = 0

##### date_as_datetime
- represents a new variable derived from concatenation of variables [,1] & [,2] found in the 'household_power_consumption.txt' file, coerced to POSIXct.
- class = POSIXct
- example value = 2007-02-01 00:00:00

- - - 

### plot1.R
This script generates a histogram from the 'Global_active_power' variable found in the common cleaned data.


#### Data cleaning
The starting dataset was already tidy, as such no further cleaning was conducted.


#### Analysis

##### Step 1: Generate the histogram
Leveraging the hist() and the 'Global_active_power' values.

##### Step 2: Output the result
Leveraging png(), a .png is generated and saved into the present working directory as 'plot1.png' with a height of 480px and a width of 480px.


#### Variable definitions
No new variables were created to perform the above analysis.

- - - 

### plot2.R
This script generates a line plot of the date_as_datetime variable (combined 'Date' & 'Time' variables) on the X axis and the 'Global_active_power' variable on the Y axis; all variables as found in the common cleaned data.


#### Data cleaning
The starting dataset was already tidy, as such no further cleaning was conducted.


#### Analysis

##### Step 1: Generate the plot
Leveraging the plot() and the common cleaned data values.

##### Step 2: Output the result
Leveraging png(), a .png is generated and saved into the present working directory as 'plot2.png' with a height of 480px and a width of 480px.


#### Variable definitions
No new variables were created to perform the above analysis.

- - - 

### plot3.R
This script generates a line plot of the date_as_datetime variable (combined 'Date' & 'Time' variables) on the X axis and the 'Sub_metering_1' (in black), 'Sub_metering_2' (in red) and 'Sub_metering_3' (in blue) variables on the Y axis; all variables as found in the common cleaned data.


#### Data cleaning
The starting dataset was already tidy, as such no further cleaning was conducted.


#### Analysis

##### Step 1: Generate the plot
Leveraging the plot() and the common cleaned data values, including only the 'Sub_metering_1' data.

##### Step 2: Additional plot data
Leveraging the point() and 'Sub_metering_2' data, with the pch in red (#FF0000).

##### Step 3: Additional plot data
Leveraging the point() and 'Sub_metering_3' data, with the pch in blue (#0000FF).

##### Step 4: Add a legend
Leveraging the legend()

##### Step 5: Output the result
Leveraging png(), a .png is generated and saved into the present working directory as 'plot3.png' with a height of 480px and a width of 480px.


#### Variable definitions
No new variables were created to perform the above analysis.

- - - 

### plot4.R
This script generates four plots ina  single image, with each plot using date_as_datetime variable (combined 'Date' & 'Time' variables) on the X axis. 

The first plot shows the 'Global_active_power' variable on the Y axis. 

The second plot shows the 'Voltage' variable on the Y axis.

The third plot shows the 'Sub_metering_1' (in black), 'Sub_metering_2' (in red) and 'Sub_metering_3' (in blue) variables on the Y axis.

The fourth plor shows the 'Global_reactive_power' variable on the Y axis.

All variables as found in the common cleaned data.


#### Data cleaning
The starting dataset was already tidy, as such no further cleaning was conducted.


#### Analysis

##### Step 1: Set the plot arragement
Leveraging the par() and setting the mfrow argument. The arrangement is set to 2 x 2.

##### Step 2: Generate the first plot
Leveraging the plot() and the common cleaned data values.

##### Step 3: Generate the second plot
Leveraging the plot() and the common cleaned data values.

##### Step 4: Generate the third plot
Leveraging the plot() and the common cleaned data values, including only the 'Sub_metering_1' data.

##### Step 5: Additional plot data
Leveraging the point() and 'Sub_metering_2' data, with the pch in red (#FF0000).

##### Step 6: Additional plot data
Leveraging the point() and 'Sub_metering_3' data, with the pch in blue (#0000FF).

##### Step 7: Add a legend
Leveraging the legend() (removing the legend border this time)

##### Step 8: Generate the fourth plot
Leveraging the plot() and the common cleaned data values.

##### Step 5: Output the result
Leveraging png(), a .png is generated and saved into the present working directory as 'plot3.png' with a height of 480px and a width of 480px.


#### Variable definitions
No new variables were created to perform the above analysis.
