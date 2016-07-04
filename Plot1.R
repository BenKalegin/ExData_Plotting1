source(file = "PlotCommon.R")

par(mfcol = c(1,1))
hist(f1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.copy(png,"plot1.png",width=480, height=480,units="px")
dev.off()
