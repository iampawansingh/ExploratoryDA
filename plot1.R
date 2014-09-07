### Code to create first plot, it assumes that Main.R has been run to create the
### reqauired dataset
### Making first Plot
png(file = "plot1.png", width = 480, height = 480)
with(power_data_sub, hist(Global_active_power, xlab = "Global Active Power (kilowats)",
                          ylab = "Frequency",col = "red", xlim = c(0,6), ylim = c(0,1200),
                          main = "Global Active Power"))
dev.off()