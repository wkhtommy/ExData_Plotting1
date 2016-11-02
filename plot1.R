### For the data source, please refer to the GitHub repository: https://github.com/rdpeng/ExData_Plotting1

data <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")

### str(data)

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

png("plot1.png",width=480,height=480)
hist(data1$Global_active_power,xlab="Global Active Power (kilowatts)", ylab = "Frequency",main="Global Active Power",col="red")
dev.off()
