source("global.R")
hist(as.vector(as.matrix(tinyData["Global_active_power"]),mode='numeric'), main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()