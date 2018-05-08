source_data <- read.table("G:/Data Science/R Programming course materials/household_power_consumption.txt",skip=66637,nrows=2880, sep=";")
source_data$V1 <- as.Date(source_data$V1, format = "%d/%m/%Y")
date_time <- as.POSIXct(paste(source_data$V1, source_data$V2), format="%Y-%m-%d %H:%M:%S")
source_data <- cbind(source_data,date_time)

## PLOT 2
plot(source_data$date_time,source_data$V3, type = "l", ylab = "Global Active Power (kilowatts)", xlab ="")

## Export to .png file
png('./datasciencecoursera/plot2.png')
plot(source_data$date_time,source_data$V3, type = "l", ylab = "Global Active Power (kilowatts)", xlab ="")
dev.off()