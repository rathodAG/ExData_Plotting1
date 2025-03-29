# Open PNG device
png("plot1.png", width=480, height=480)

# Create histogram
hist(filtered_data$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency")

# Close the device
dev.off()
