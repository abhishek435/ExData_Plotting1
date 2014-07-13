### Load the relevant data from file for 1st Feb 2007 to 2nd Feb 2007
d <- read.csv2("household_power_consumption.txt",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), na.strings=c("","?"),colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),dec=".", skip=66636, nrows=2880)

## Generate Histogram with appropriate color and labels
hist(d$Global_active_power, col="red", main="Global Active Power" , xlab="Global Active Power (kilowatts)")

## Save the histogram to png imahe file
dev.copy(png, width=480, height=480, "plot1.png")
dev.off()