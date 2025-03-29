# Open PNG device
png("plot4.png", width=480, height=480)

# Set layout for 2x2 plots
par(mfrow=c(2,2))

# Plot 1: Global Active Power
plot(filtered_data$DateTime, filtered_data$Global_active_power, type="l",
     xlab="", ylab="Global Active Power")

# Plot 2: Voltage
plot(filtered_data$DateTime, filtered_data$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

# Plot 3: Sub-metering
plot(filtered_data$DateTime, filtered_data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy Sub Metering")
lines(filtered_data$DateTime, filtered_data$Sub_metering_2, col="red")
lines(filtered_data$DateTime, filtered_data$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n")

# Plot 4: Global Reactive Power
plot(filtered_data$DateTime, filtered_data$Global_reactive_power, type="l",
     xlab="datetime", ylab="Global Reactive Power")

# Close the device
dev.off()
