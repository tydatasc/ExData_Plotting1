RawData <- read.table("household_power_consumption.txt", sep=";", quote="",header=T, na.strings="?")
Data <- RawData[(RawData$Date == "1/2/2007" | RawData$Date == "2/2/2007"),]
Data$Date <- strptime(paste(Data$Date, Data$Time), "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(Data$Date, Data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()