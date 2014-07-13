### Load the relevant data from file for 1st Feb 2007 to 2nd Feb 2007
d <- read.csv2("household_power_consumption.txt",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), na.strings=c("","?"),colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),dec=".", skip=66636, nrows=2880)

## Generate line plot with appropriate labels
plot(strptime(paste(d$Date,d$Time, sep=""), "%d/%m/%Y %H:%M:%S"),d$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="",type="l")

## Save the histogram to png imahe file
dev.copy(png, width=480, height=480, "plot2.png")
dev.off()