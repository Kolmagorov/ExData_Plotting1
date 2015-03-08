plot2<-function(filename){
  input<-read.table(filename,header=T,sep=";",stringsAsFactors=F)
  pwc<-input[(input$Date=="1/2/2007" | input$Date=="2/2/2007"),]
  date<-as.POSIXct(paste(pwc$Date, pwc$Time), format="%d/%m/%Y %H:%M:%S")
  png(filename = "plot2.png",width = 480, height = 480)
  with(pwc, plot(date,as.numeric(pwc$Global_active_power),
                 main="",
                 type="l",
                 xlab=" ",
                 ylab="Global Active Power (kilowatts)",
                 frame=T))
  dev.off()
}