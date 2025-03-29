# Open PNG device
png("plot3.png", width=480, height=480)

# Plot Sub-metering
plot(filtered_data$DateTime, filtered_data$Sub_metering_1, type="l", col="black", 
     xlab="", ylab="Energy Sub Metering")
lines(filtered_data$DateTime, filtered_data$Sub_metering_2, col="red")
lines(filtered_data$DateTime, filtered_data$Sub_metering_3, col="blue")

# Add legend
legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

# Close the device
dev.off()
