RawData <- read.table("household_power_consumption.txt", sep=";", quote="",header=T, na.strings="?")
Data <- RawData[(RawData$Date == "1/2/2007" | RawData$Date == "2/2/2007"),]
Data$Date <- strptime(paste(Data$Date, Data$Time), "%d/%m/%Y %H:%M:%S")
png("plot3.png")
plot(Data$Date, Data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(Data$Date, Data$Sub_metering_2, col = "red")
lines(Data$Date, Data$Sub_metering_3, col = "blue")
legend("topright",lty = 1, col=c("black","red", "blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()