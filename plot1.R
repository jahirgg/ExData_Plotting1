## Data for 01/02/2007 and 02/02/2007 is between lines 66638 and 69517
## Reading the data points
dat <- read.table("household_power_consumption.txt",sep = ";", skip = 66637, nrow = 2879)

## Reading the column names
c <- colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE, sep = ";"))
## Asigning the column names to the data
colnames(dat) <- c

## Plot 1
par(mfrow=c(1,1)) ## Making sure the plot only fits one graph
hist(dat[,3],col="red",xlab ="Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png,file="figure/plot1.png")
dev.off()