plot1<-function(filename){
  input<-read.table(filename,header=T,sep=";",stringsAsFactors=F)
  pwc<-input[(input$Date=="1/2/2007" | input$Date=="2/2/2007"),]
  png(filename = "plot1.png",width = 480, height = 480)
  with(pwc, hist(as.numeric(pwc$Global_active_power),
                 main="Global Active Power",
                 col="red",
                 xlab="Global Active Power (kilowatts)"))
  dev.off()
}