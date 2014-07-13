### Load the relevant data from file for 1st Feb 2007 to 2nd Feb 2007
d <- read.csv2("household_power_consumption.txt",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), na.strings=c("","?"),colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),dec=".", skip=66636, nrows=2880)

## Plot the graphs for sub meter readings
lines(strptime(paste(d$Date,d$Time, sep=""), "%d/%m/%Y %H:%M:%S"),d$Sub_metering_1, ylab="Energy sub metering", xlab="",type="l")
lines(strptime(paste(d$Date,d$Time, sep=""), "%d/%m/%Y %H:%M:%S"),d$Sub_metering_2, ylab="Energy sub metering", xlab="",type="l", col="red")
lines(strptime(paste(d$Date,d$Time, sep=""), "%d/%m/%Y %H:%M:%S"),d$Sub_metering_3, ylab="Energy sub metering", xlab="",type="l", col="blue")

legend("topright", pch = "-",lwd="2", col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

## Save the histogram to png imahe file
dev.copy(png, width=480, height=480, "plot3.png")
dev.off()