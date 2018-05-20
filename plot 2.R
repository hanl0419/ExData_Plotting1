setwd("./Data Science Specilization project/ExData_Plotting1")
file<-"./data/household_power_consumption.txt"
data<-read.table(file,header=TRUE, sep=";")
data1<-subset(data,Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlAcPw<-as.numeric(as.character(data1$Global_active_power))
png(file="plot 2.png")
plot(datetime,GlAcPw,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()