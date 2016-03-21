## Construct a plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
## plot1.R

power <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors=FALSE, na.strings = "?") 
powerSubset <- power[power$Date %in% c("1/2/2007","2/2/2007"),]

png("plot1.png", width=480, height=480)
GlobalActivePower <- as.numeric(powerSubset$Global_active_power)
hist(GlobalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

