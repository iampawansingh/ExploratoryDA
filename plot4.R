### making fourth plot
png(file = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))
with(power_data_sub,{ plot(time,Global_active_power, pch ="",type ="l",
                          ylab = "Global Active Power (Kilowatts)", xlab = "")
                      plot(time,Voltage, pch ="",type ="l",
                           ylab = "Voltage", xlab = "") 
                      plot(time,Sub_metering_1,type ="n",
                           ylab = "Energy sub metering",xlab ="")
                      {lines(time,Sub_metering_1, col ="black",type ="l")
                      lines(time,Sub_metering_2, col ="red", type = "l")
                      lines(time,Sub_metering_3, col ="blue", type = "l")
                      legend("topright", lwd = .1, col = c("black", "red", "blue"), 
                      legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))}
                      plot(time,Global_reactive_power, pch ="",type ="l",
                           ylab = "Global Reactive Power (Kilowatts)", xlab = "")
                      })
dev.off()
