setwd("./Data Science Specilization project/ExData_Plotting1")
file<-"./data/household_power_consumption.txt"
data<-read.table(file,header=TRUE, sep=";")
data1<-subset(data,Date %in% c("1/2/2007","2/2/2007"))
GlAcPw<-as.numeric(as.character(data1$Global_active_power))
png(file="plot 1.png")
hist(GlAcPw,col="red",main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
dev.off()