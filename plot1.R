data<- read.table("hpc.txt",sep=";",header=TRUE)
data$Global_active_power<-as.numeric(as.character(data$Global_active_power))
data$Global_reactive_power<-as.numeric(as.character(data$Global_reactive_power))
data$Voltage<-as.numeric(as.character(data$Voltage))
data$Date<- as.Date(strptime(data$Date,format="%d/%m/%Y"))
sub1<- data[data$Date == "2007-02-01",]
sub2<-data[data$Date == "2007-02-02",]
sub<-rbind(sub1,sub2)

#plot1
hist(sub$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power(kilowatts)")
png(filename='plot1.png', width=480, height=480, units='px')
