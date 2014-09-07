### Making third plot 
png(file = "plot3.png", width = 480, height = 480)
with(power_data_sub, plot(time,Sub_metering_1,type ="n",
                          ylab = "Energy sub metering",xlab =""))
with( power_data_sub,lines(time,Sub_metering_1, col ="black",type ="l"))
with(power_data_sub, lines(time,Sub_metering_2, col ="red", type = "l"))
with(power_data_sub, lines(time,Sub_metering_3, col ="blue", type = "l"))
legend("topright", lwd = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()