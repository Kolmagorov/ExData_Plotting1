plot3<-function(filename){
  input<-read.table(filename,header=T,sep=";",stringsAsFactors=F)
  pwc<-input[(input$Date=="1/2/2007" | input$Date=="2/2/2007"),]
  date<-as.POSIXct(paste(a$Date, a$Time), format="%d/%m/%Y %H:%M:%S")
  png(filename = "plot3.png",width = 480, height = 480)
  
  with(pwc, plot(date,as.numeric(Sub_metering_1),
                 type="l", 
                 ylab="Energy sub metering",
                 xlab="",
                 frame=T))
  
  lines(date,(as.numeric(pwc$Sub_metering_2)),type="l",col="red")
  lines(date,(as.numeric(pwc$Sub_metering_3)),type="l",col="blue")
  legend("topright", 
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty=c(1,1,1),
         lwd=c(1,1,1),
         col=c("black","red","blue"),
         cex=.8,
         bty="n")
  dev.off()
}