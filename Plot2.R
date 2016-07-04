source(file = "PlotCommon.R")

par(mfcol = c(1,1))

plot(f1$DateTime, f1$Global_active_power, xlab = "", ylab = "Global Active Power(kilowatts)", type = "l")

dev.copy(png,"plot2.png",width=480, height=480,units="px")
dev.off()
