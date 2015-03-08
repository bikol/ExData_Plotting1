Sys.setlocale("LC_TIME", 'English')
df <- read.csv("household_power_consumption.txt",sep = ';',na.strings=c('?'))
df = df[df$Date == '1/2/2007' | df$Date == '2/2/2007',]
df$datetime <- strptime(paste(ddf$Date,ddf$Time),'%d/%m/%Y %H:%M:%S')

png("plot2.png")
plot(df$datetime,df$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)')
dev.off()