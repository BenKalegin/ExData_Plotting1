source(file = "PlotCommon.R")

par(mfcol = c(1,1))
plot(f1$DateTime, f1$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(f1$DateTime, f1$Sub_metering_2, type = "l", col = "red")
lines(f1$DateTime, f1$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png,"plot3.png",width=480, height=480,units="px")
dev.off()