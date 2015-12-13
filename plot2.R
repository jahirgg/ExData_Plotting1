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

# Plot 2
plot(z,dat[,3],ylab = "Global Active Power (kilowatts)", type = "l", xlab = "")
dev.copy(png,file="figure/plot2.png")
dev.off()
