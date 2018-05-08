source_data <- read.table("G:/Data Science/R Programming course materials/household_power_consumption.txt",skip=66637,nrows=2880, sep=";")
source_data$V1 <- as.Date(source_data$V1, format = "%d/%m/%Y")
date_time <- as.POSIXct(paste(source_data$V1, source_data$V2), format="%Y-%m-%d %H:%M:%S")
source_data <- cbind(source_data,date_time)

## PLOT 3
plot(source_data$date_time, source_data$V7, 
     type="l", 
     xlab="", 
     ylab="Energy Sub Metering", 
     xlim = c(min(source_data$date_time),max(source_data$date_time)))
lines(source_data$date_time, source_data$V7)
lines(source_data$date_time, source_data$V8, col="red")
lines(source_data$date_time, source_data$V9, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

## Export to a .PNG file
png('./datasciencecoursera/plot3.png')
plot(source_data$date_time, source_data$V7, 
     type="l", 
     xlab="", 
     ylab="Energy Sub Metering", 
     xlim = c(min(source_data$date_time),max(source_data$date_time)))
lines(source_data$date_time, source_data$V7)
lines(source_data$date_time, source_data$V8, col="red")
lines(source_data$date_time, source_data$V9, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

## Send to .png file
dev.off()
