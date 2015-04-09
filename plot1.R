RawData <- read.table("household_power_consumption.txt", sep=";", quote="",header=T, na.strings="?")
Data <- RawData[(RawData$Date == "1/2/2007" | RawData$Date == "2/2/2007"),]
rm(RawData)
Data$Date <- strptime(paste(Data$Date, Data$Time), "%d/%m/%Y %H:%M:%S")
png("plot1.png")
hist(Data$Global_active_power,
      xlab = "Global Active Power (kilowatts)",
      main = "Global Active Power",
      col = "red")
dev.off()