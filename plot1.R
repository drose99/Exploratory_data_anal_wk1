source_data <- read.table("G:/Data Science/R Programming course materials/household_power_consumption.txt",
                          skip=66637,nrows=2880, sep=";")

## PLOT 1
hist(source_data$V3, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)", cex.axis = .8)


## Export to .png file
png('./datasciencecoursera/plot1.png')
hist(source_data$V3, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)", cex.axis = .8)
dev.off()