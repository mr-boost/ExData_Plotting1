
#Main function to run in order to create plot1 
plot1 <- function() {
    
    dataset <- loadData()
    png("plot1.png", width = 480, height = 480)
    hist(dataset$Global_active_power, col = "red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
    dev.off()
}


#function to load the dataset
loadData <- function () {
    
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    filenamezip <- "household_power_consumption.zip"
    filenametxt <- "household_power_consumption.txt"
    
    #Download zip file from source if it does not exist
    if (!file.exists(filenamezip)) download.file(url, filenamezip, mode ="wb")
    
    #Unzip and read table
    dataset <- read.table(unz(filenamezip, filenametxt), header = TRUE, sep=";", na.strings = "?")
    
    #filter on dates 2007-02-01 and 2007-02-02
    dataset <- subset(dataset, Date == "1/2/2007" | Date == "2/2/2007")
    
    #Date class
    dataset$DateTime <- as.POSIXct(paste(dataset$Date, dataset$Time), format ="%d/%m/%Y %H:%M:%S", tz="Europe/Paris")
    dataset$Date <- NULL
    dataset$Time <- NULL
    
    dataset
}

