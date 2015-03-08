Sys.setlocale("LC_TIME", 'English')
df <- read.csv("household_power_consumption.txt",sep = ';',na.strings=c('?'))
df = df[df$Date == '1/2/2007' | df$Date == '2/2/2007',]
df$datetime <- strptime(paste(ddf$Date,ddf$Time),'%d/%m/%Y %H:%M:%S')

png("plot4.png")
par(mfrow=c(2,2))

plot(df$datetime,df$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)')
plot(df$datetime,df$Voltage,type='l',xlab='datetime',ylab='Voltage')

plot(df$datetime,df$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
lines(df$datetime,df$Sub_metering_2,col='red',type='l')
lines(df$datetime,df$Sub_metering_3,col='blue')
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col=c('black','red','blue'),lwd=1,bty="n")

plot(df$datetime,df$Global_reactive_power,type='l',xlab='datetime',ylab='Global_reactive_power')

dev.off()