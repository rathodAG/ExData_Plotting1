# Open PNG device
png("plot2.png", width=480, height=480)

# Plot Global Active Power over time
plot(filtered_data$DateTime, filtered_data$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (kilowatts)", main="")

# Close the device
dev.off()
