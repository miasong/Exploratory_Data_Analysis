## Construct a plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
## plot3.R

power <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors=FALSE, na.strings = "?") 
powerSubset <- power[power$Date %in% c("1/2/2007","2/2/2007"),]

GAP <- as.numeric(powerSubset$Global_active_power)
subMT1 <- as.numeric(powerSubset$Sub_metering_1)
subMT2 <- as.numeric(powerSubset$Sub_metering_2)
subMT3 <- as.numeric(powerSubset$Sub_metering_3)
DT <- strptime(paste(powerSubset$Date, powerSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png("plot3.png", width=480, height=480)

with(powerSubset, {
    plot(DT, subMT1, xlab = " ", ylab = "Energy sub metering", type = "l")
        lines(DT, subMT2, type="l", col="red")
        lines(DT, subMT3, type="l", col="blue")
        legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col=c("black", "red", "blue"))
})

dev.off()
    
