### For the data source, please refer to the GitHub repository: https://github.com/rdpeng/ExData_Plotting1

data <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")

### str(data)

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

data1$DateTime <- strptime(paste(data1$Date,data1$Time),"%d/%m/%Y %H:%M:%S")

png("plot2.png",width=480,height=480)
plot(x = data1$DateTime, y = data1$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
