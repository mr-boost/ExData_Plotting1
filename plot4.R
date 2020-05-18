#Main function to create plot4
plot4 <- function() {
    
    dataset <- loadData()
    png("plot4.png", width = 480, height = 480)
    
    par(mfrow=c(2,2))
    
    #Top-left plot
    plot(dataset$Global_active_power ~ dataset$DateTime,type="l",
         xlab="",ylab="Global Active Power")
    
    #Top-right plot
    plot(dataset$Voltage ~ dataset$DateTime,type="l",
         xlab="datetime",ylab="Voltage")
    
    #Bottom-left plot
    plot(dataset$Sub_metering_1 ~ dataset$DateTime,type="l",
         xlab="",ylab="Energy sub metering")
    points(dataset$Sub_metering_2 ~ dataset$DateTime,type="l",
           xlab="",ylab="", col = "red")
    points(dataset$Sub_metering_3 ~ dataset$DateTime,type="l",
           xlab="",ylab="", col = "blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", 
                                "Sub_metering_3"), col=c("black","red", "blue"), lty=1, bty="n")
    
    #Bottom-right plot
    plot(dataset$Global_reactive_power ~ dataset$DateTime,type="l",
         xlab="datetime",ylab="Global_reactive_power")
    
    dev.off()
}