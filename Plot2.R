## Upload Datafile to Folder

# Read Data from Folder
data <- read.table("/Users/user/Coursera/household_power_consumption.txt", header = T,sep = ";", na.strings = "?")

# convert the date variable to Date class
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

# Subset the data
data <- subset(data, subset = (date >= "2007-02-01" & date <= "2007-02-02"))

# Convert date to day
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Plot 2 
plot(data$Global_active_power~data$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
