df <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
df1 <- df[(df$Date=="1/2/2007" | df$Date=="2/2/2007"),]
df1$Global_active_power <- as.numeric(levels(df1[,3])[df1[,3]])
hist(df1$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="Red")
dev.copy(png, file="plot1.png")
dev.off()
