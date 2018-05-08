## PLOT 2
source_data$V1 <- as.Date(source_data$V1, format = "%d/%m/%Y")
date_time <- as.POSIXct(paste(source_data$V1, source_data$V2), format="%Y-%m-%d %H:%M:%S")
source_data <- cbind(source_data,date_time)
plot(source_data$date_time,source_data$V3, type = "l", ylab = "Global Active Power (kilowatts)", xlab ="")

