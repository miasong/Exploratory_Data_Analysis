## Construct a plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
## plot2.R

power <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors=FALSE, na.strings = "?") 
powerSubset <- power[power$Date %in% c("1/2/2007","2/2/2007"),]


png("plot2.png", width=480, height=480)

GAP <- as.numeric(powerSubset$Global_active_power)
DT <- strptime(paste(powerSubset$Date, powerSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
with(powerSubset, plot(DT, GAP, xlab = " ", ylab = "Global Active Power (kilowatts)", type="l"))

dev.off()
