## Upload Datafile to Folder

# Read Data from Folder
data <- read.table("/Users/user/Coursera/household_power_consumption.txt", header = T,sep = ";", na.strings = "?")

# convert the date variable to Date class
date <- as.Date(data$Date, format = "%d/%m/%Y")

# Subset the data
data <- subset(data, subset = (date >= "2007-02-01" & date <= "2007-02-02"))

## Plot 1 - Histogram

hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()





