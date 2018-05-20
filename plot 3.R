setwd("./Data Science Specilization project/ExData_Plotting1")
file<-"./data/household_power_consumption.txt"
data<-read.table(file,header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data1<-subset(data,Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

Sub1<-as.numeric(data1$Sub_metering_1)
Sub2<-as.numeric(data1$Sub_metering_2)
Sub3<-as.numeric(data1$Sub_metering_3)

png(file="plot 3.png")


    plot(datetime,Sub1,type="l",xlab="",ylab="Energy sub metering")
    lines(datetime,Sub2,type="l",col="red")
    lines(datetime,Sub3,type="l",col="blue")


legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))


dev.off()