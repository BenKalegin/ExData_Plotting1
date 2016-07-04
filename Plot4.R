source(file = "PlotCommon.R")

par(mfcol = c(2,2))

#tile 1
plot(f1$DateTime, f1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")

#tile 2
plot(f1$DateTime, f1$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(f1$DateTime, f1$Sub_metering_2, type = "l", col = "red")
lines(f1$DateTime, f1$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#tile 3
plot(f1$DateTime, f1$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

#tile 4
plot(f1$DateTime, f1$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global reactive power")

dev.copy(png,"plot4.png",width=480, height=480,units="px")
dev.off()