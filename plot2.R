df <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
df1 <- df[(df$Date=="1/2/2007" | df$Date=="2/2/2007"),]
df1$dtime <- paste(df1$Date, df1$Time)
df1$dtime <- strptime(df1$dtime, "%d/%m/%Y %H:%M:%S")
df1$Global_active_power <- as.numeric(levels(df1[,3])[df1[,3]])
plot(df1$dtime, df1$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png")
dev.off()
