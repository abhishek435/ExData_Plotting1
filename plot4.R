### Load the relevant data from file for 1st Feb 2007 to 2nd Feb 2007
d <- read.csv2("household_power_consumption.txt",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), na.strings=c("","?"),colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),dec=".", skip=66636, nrows=2880)

### Set parameters
par(mfcol = c(2, 2), mar = c(5, 4.5, 0.5, 1))

### Plot multiple graphs
with(d , {
plot(strptime(paste(Date,Time, sep=""), "%d/%m/%Y %H:%M:%S"),Global_active_power, ylab="Global Active Power", xlab="",type="l")
plot(strptime(paste(Date,Time, sep=""), "%d/%m/%Y %H:%M:%S"),Sub_metering_1, ylab="Energy sub metering", xlab="",type="l")
lines(strptime(paste(Date,Time, sep=""), "%d/%m/%Y %H:%M:%S"),Sub_metering_2, ylab="Energy sub metering", xlab="",type="l", col="red")
lines(strptime(paste(Date,Time, sep=""), "%d/%m/%Y %H:%M:%S"),Sub_metering_3, ylab="Energy sub metering", xlab="",type="l", col="blue")
legend("topright", pch = "-", col = c("black","blue", "red"), bty="n", legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), x.intersp=0.3,y.intersp=0.5, seg.len=1,lwd=2, inset=c(-0.18,0))
plot(strptime(paste(Date,Time, sep=""), "%d/%m/%Y %H:%M:%S"),Voltage, ylab="Voltage", xlab="datetime",type="l")

plot(strptime(paste(Date,Time, sep=""), "%d/%m/%Y %H:%M:%S"),Global_reactive_power, ylab="Global_reactive_power", xlab="datetime",type="l")
})

## Save the histogram to png imahe file
dev.copy(png, width=480, height=480, "plot4.png")
dev.off()