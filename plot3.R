#Main function to create plot3
plot3 <- function() {
    
    dataset <- loadData()
    png("plot3.png", width = 480, height = 480)
    
    plot(dataset$Sub_metering_1 ~ dataset$DateTime,type="l",
         xlab="",ylab="Energy sub metering")
    points(dataset$Sub_metering_2 ~ dataset$DateTime,type="l",
         xlab="",ylab="", col = "red")
    points(dataset$Sub_metering_3 ~ dataset$DateTime,type="l",
         xlab="",ylab="", col = "blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", 
                                "Sub_metering_3"), col=c("black","red", "blue"), lty=1)
    dev.off()
}