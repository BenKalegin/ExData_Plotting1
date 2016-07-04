library(data.table)

# load the data
f <- fread("input/household_power_consumption.txt", sep=";", header = TRUE,  na.strings="?", stringsAsFactors = FALSE)

#We will only be using data from the dates 2007-02-01 and 2007-02-02
library(dplyr)
f1 <- filter(f, grep("^[1,2]/2/2007", Date))

# anyNA(f1) returns false. we dont need to filter out nulls
#summary(f1) shows all data feilds are numeric

# add datetime field
f1[["DateTime"]] <- strptime(paste(f1$Date, f1$Time), format = "%d/%m/%Y %H:%M:%S")

