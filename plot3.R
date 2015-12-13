## Data for 01/02/2007 and 02/02/2007 is between lines 66638 and 69517
## Reading the data points
dat <- read.table("household_power_consumption.txt",sep = ";", skip = 66637, nrow = 2879)

## Reading the column names
c <- colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE, sep = ";"))
## Asigning the column names to the data
colnames(dat) <- c

par(mfrow=c(1,1)) ## Making sure the plot only fits one graph


# Concatenating Day and Time values
dates <- paste(dat[,1],dat[,2])
# Converting to dates
z <- strptime(dates,"%d/%m/%Y %H:%M:%S")

#Plot 3
with(dat,plot(z,Sub_metering_1, type="l", ylab = "Energy sub metering"))
with(dat,points(z,Sub_metering_2,col="red",type="l"))
with(dat,points(z,Sub_metering_3,col="blue",type="l"))
legend("topright",pch = "__", col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,file="figure/plot3.png")
dev.off()
