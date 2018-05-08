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
