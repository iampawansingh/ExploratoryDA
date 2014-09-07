library(data.table)
## Setting Working Directory
setwd("C:/Users/Pawan/Documents/Self/Gyan/DataScience/ExploratoryDA/Assignment");
###  Reading Data
power_data <- data.table(read.table(".//household_power_consumption.txt",
                                    sep=";", stringsAsFactors = F, header = T))

### Setting Class of each column of data
power_data[, Date := as.Date(Date, format = "%d/%m/%Y")]
power_data[, ':='(Global_active_power = as.numeric(Global_active_power),
                  Global_reactive_power = as.numeric(Global_reactive_power),
                  Voltage = as.numeric(Voltage),
                  Global_intensity = as.numeric(Global_intensity),
                  Sub_metering_1 = as.numeric(Sub_metering_1),
                  Sub_metering_2 = as.numeric(Sub_metering_2),
                  Sub_metering_3 = as.numeric(Sub_metering_3))]


## Subsetting Data for 2007-02-01 and 2007-02-02

power_data_sub <- power_data[Date == "2007-02-01" | Date == "2007-02-02"]
### Creating time vector against which all the plotting will be done
time <- paste(power_data_sub$Date, power_data_sub$Time, sep =" ")
time <- strptime(time, "%Y-%m-%d %H:%M:%S")

### Above code has prepared data 