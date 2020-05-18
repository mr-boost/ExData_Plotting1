#Main function to create plot2 
plot2 <- function() {
    
    dataset <- loadData()
    png("plot2.png", width = 480, height = 480)
    
    plot(dataset$Global_active_power ~ dataset$DateTime,type="l",
         xlab="",ylab="Global Active Power (kilowatts)")
    dev.off()
}