### Making Second Plot

png(file = "plot2.png", width = 480, height = 480)
with(power_data_sub, plot(time,Global_active_power, pch ="",type ="l",
                          ylab = "Global Active Power (Kilowatts)", xlab = ""))
dev.off()