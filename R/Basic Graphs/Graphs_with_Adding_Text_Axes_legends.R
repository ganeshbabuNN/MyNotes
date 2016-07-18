#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Basic Graphs"))

#numeric vector
dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)

#Axis values range setup
plot(dose,drugA,type="b",col="red",lty=2,pch=2,lwd=2,main="Clinical Trial for Drug A",sub="this is hypothetical data",xlab="Dosage",ylab="Drug Response",xlim=c(0,60),ylim=c(0,70)) 

#TITLES
#----------------
#use title() function to add information to a title and axis labels to a plot along with graphical parameters
plot(dose,drugA,type="b",xlim=c(0,60),ylim=c(0,70))
par(ann=FALSE) #ann=FALSE options remove default titles and labels in the plot
title(main="main title",col.main="red",sub="Sub Title",col.sub="blue")#main and sub options specifyies the titles
title(xlab="x-axis label",ylab="y-axis label",col.lab="green",cex.lab=0.75) #xlab and ylab are the axis labels

#AXES
#----------------
#Axis() functions is typically used for custom axis
opar <- par(no.readonly=TRUE)
plot(dose,drugA,type="b",lty=2,pch=2,lwd=2,ann=FALSE,xlim=c(0,60),ylim=c(0,70))
lines(dose,drugB,type="b",lty=2,pch=2,lwd=2,col="red")#line functions() adds an new line
#axis(side=4)#side options is integer indicating the side of the graph on which to draw the axix 1(bottom),2(left),3(top),4(right)
#axis(side=4,at=drugB)#at options where numeric vector indicating where tick marks should be drawn
#axis(side=4,at=drugB,labels=drugB)#labels options is charc vector of labels to be placed at the tick marks
#axis(side=4,at=drugB,labels=drugB,lty=4,col="blue")#col options line and tick mark colour
#axis(side=4,at=drugB,labels=dose,lty=4,col="blue",las=2)#las options title specify the label in parallel(1) or perpendicular(2)
axis(side=4,at=drugB,lty=4,col="blue",tck=-0.05)#tck options supresses the length of each tick mark which is major.
mtext("Drug B",side=4,line=2,cex.lab=1,col="blue",las=1)#mtext options add the text of the margin of the plot
title(main="Main title",xlab="x-axis label",ylab="y-axis label",col.lab="green",cex.lab=0.75) # adding title
par(opar)
#for minor tick mark
#use the minor.tick functions() from Hmisc package
opar <- par(no.readonly=TRUE)
plot(dose,drugA,type="b",lty=2,pch=2,lwd=2,ann=FALSE,xlim=c(0,60),ylim=c(0,70))
lines(dose,drugB,type="b",lty=2,pch=2,lwd=2,col="red")#line functions() adds an new line
axis(side=4,at=drugB,lty=4,col="blue",tck=-0.01)
library(Hmisc) #minor tick marks package
minor.tick(nx=3,ny=3,tick.ratio=0.5) #nx and y options are divide the area between major tick on x-axis and y axis and tick.rati is the size minor tick marks
mtext("Drug B",side=4,line=2,cex.lab=1,col="blue",las=1)
title(main="Main title",xlab="x-axis label",ylab="y-axis label",col.lab="green",cex.lab=0.75) # adding title
par(opar)

#combining all axis and title
opar <- par(no.readonly=TRUE)
x <- c(1:10)
y <- x
z <- 10/x
par(mar=c(5,4,4,8)+ 0.1) #mar options increases the margin
plot(x,y,type="b",pch=21,lty=3,ann=FALSE)#Plot() starts a new graph & ann=FALSE options remove default titles and labels in the plot
lines(x,z,type="b",pch=22,col="blue",lty=2)#adding new graph elements to existing graph using line() functions
axis(2,at=x,labels=x,col.axis="red",lty=3)#
axis(4,at=x,labels=round(z,digits=2),col.axis="blue",las=2,cex.axis=0.7,tck=-0.01)
mtext("y=1/x",side=4,line=3,cex.lab=1,las=2,col="blue")
title("An example of the creative axes",xlab="X Values",ylab="Y=X")
par(opar)

#REFERENCE LINES
#----------------
#abline() functions is used to add reference lines to a graph.
opar <- par(no.readonly=TRUE)
plot(dose,drugA,type="b",xlim=c(0,60),ylim=c(0,70))
abline(h=c(22,34,25),lwd=1.5,lty=2,col="gray") #h options adds the solid horizontal lines numeric vector
abline(v=seq(33,53,67),lty=2,col="blue")#v options add vertical lines 
par(opar)

#LEGEND
#----------------
#legend() functions can be added whats being represented by each bar,pie,slice
opar <- par(no.readonly=TRUE)
plot(dose,drugA,type="b",pch=15,lty=1,col="blue",xlim=c(0,60),ylim=c(0,70))
abline(h=c(40),lwd=1.5,lty=2,col="gray")
#legend(location="topleft",legend=c("Drug A")) #location options is used to place positions & lengend options for charcter vector with labels
#legend("topleft",c("Drug A"),inset=.05)#inset options moves the indenting the positions 
#legend("topleft",c("Drug A"),inset=.05,title="Drug title")#title options specifies the legend title 
#legend("topleft",c("Drug A"),inset=.05,title="Drug title",lty=1,pch=15,col="blue")#lty and pch options specify the line type and symbol type
legend("topleft",c("Drug A"),inset=.05,title="Drug title",lty=1,pch=15,col="blue")#title options specifies the legend title 
par(opar)

#Example combining reference lines and lengend
opar <- par(no.readonly=TRUE)
par(lwd=1,cex=1,font.lab=1) # increase line, text,symbols and label size
plot(dose,drugA,type="b",pch=15,lty=1,col="red",xlim=c(0,60),ylim=c(0,70),main="Drug A vs Drug B", xlab="Drug Dosage",ylab="Drug Response") #genderating the graph
lines(dose,drugB,type="b",pch=17,lty=2,col="blue")#adding new graph elements to existing graph using line() functions 
abline(h=c(30),lwd=1.5,lty=2,col="gray")#adding the reference lines
library(Hmisc) #sepial library for ticks
minor.tick(nx=3,ny=3,tick.ratio=0.5)
legend("topleft",inset=.05,title="Drug Type",c("A","B"),lty=c(1,2),pch=c(15,17),col=c("red","blue"))
par(opar)