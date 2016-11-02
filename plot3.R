### For the data source, please refer to the GitHub repository: https://github.com/rdpeng/ExData_Plotting1

data <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")

### str(data)

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

data1$DateTime <- strptime(paste(data1$Date,data1$Time),"%d/%m/%Y %H:%M:%S")

png("plot3.png",width=480,height=480)
plot(x = data1$DateTime, y = data1$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",col="black")
lines(x = data1$DateTime, y = data1$Sub_metering_2, col="red")
lines(x = data1$DateTime, y = data1$Sub_metering_3, col="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
dev.off()
