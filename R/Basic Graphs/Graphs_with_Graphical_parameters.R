#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Basic Graphs"))

#numeric vector
dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)

#note all the plotting functions allow you to specify all possible graphical parameter like ?plot,?hist,?boxplot

#scatter plot with dose(X as horizontal axis) with drugA(Y as vertical axis)
plot(dose,drugA) 

#check help(plot) for other options

##GRAPHICAL PARAMETERS
#---------------------
#par() functions for customizing the graph parameter (fonts,colors,axes and labels)
#par() without parameter produces list of the graphical settings
opar <- par(no.readonly=TRUE) #no.readonly=TRUE produces makes copy of the current settings can be modifed.
par(lty=2,pch=17) #Adding the default line types to dashed lty=2 & default symbols for plotting points to a solid traingle pch=17
plot(dose,drugA,type="b")
par(opar)

#passing separately as a statements also
opar <- par(no.readonly=TRUE) 
par(lty=2)
par(pch=17)
plot(dose,drugA,type="b")
par(opar)

#LABELS 
plot(dose,drugA,type="b",lty=2,main="Main title") # main options modify/add the main title labels
plot(dose,drugA,type="b",lty=2,xlab="Dose Escalation")#xlab options modify/add the x axises labels
plot(dose,drugA,type="b",lty=2,ylab="Drug A category")#ylab options modify/add the y axises labels
plot(dose,drugA,type="b",lty=2,sub="subtitle") #sub options modify/adds the subtitle
#combining all the options in one statement
plot(dose,drugA,type="b",lty=2,main="Main title",xlab="Dose Escalation",ylab="Drug A category",sub="subtitle") 

#SYMBOLS and LINES using 
#-------------------
#specifying the graphical parameters for plotting symbols and lines used in graph

opar <- par(no.readonly=TRUE) 
par(lty=3)# lty options specify the line type
par(pch=10)# #pch options specifies the symbols type to use when plotting points
par(lwd=3)#lwd options line widthness default is 1 increase the size 
par(cex=1)#cex options symbol size default is 1 increase the size
plot(dose,drugA,type="b")
par(opar)
#adding directlty to the plot statements as options
plot(dose,drugA,type="b",lty=3,pch=10,lwd=3,cex=1) 

#COLORS
#-------------------
#specifying colors to labels, axis, title..etc
opar <- par(no.readonly=TRUE) 
par(col="black")#col options provides defaults plotting colour
par(col.axis="blue")#col.axis options adding color to the axis text
par(col.lab="deeppink4")#col.lab options adding color to the axis labels
par(col.main="darkviolet")#col.main options adding color to the titles
par(col.sub="deepskyblue")#col.sub options adding color to the subtitles
par(fg="yellow")#fg options adds color for the plot foreground
par(bg="green")#bg options adds color for the plot background
plot(dose,drugA,type="b",lty=3,pch=10,lwd=3,cex=1,main="Main title",sub="Subtitle",xlab="X axis",ylab="Y axis")
par(opar)
#Can be written in one statement in plot functions
plot(dose,drugA,type="b", lty=2,pch=127,col="red",main="Main title",sub="Subtitle",
col.axis="black",col.lab="deeppink4",col.main="darkviolet",col.sub="deepskyblue",fg="yellow",bg="green") 

#For other popular attractive colour use package RColorBrewer
#use the http://colorbrewer2.org/ page ?RColorBrewer help for more informations
install.packages("RColorBrewer")
library("RColorBrewer")
mycolors <- brewer.pal(n,"Set1")
plot(dose,drugA,type="b", lty=2,pch=127,lwd=4,col=mycolors)

#TEXT Characterstics
#-------------------
#basically used for text size, font and style

#specifically the text SIZE
opar <- par(no.readonly=TRUE) 
par(cex=1)#cex plotted text size
par(cex.axis=1)#cex.axis option axis text relative
par(cex.lab=1)#cex.lab option axis labels relative
par(cex.main=1)#cex.lab option main title relative
par(cex.sub=1)#cex.sub option sub title relative
plot(dose,drugA,type="b",main="Main title",sub="Subtitle",xlab="X axis",ylab="Y axis")
par(opar)
#above can be written in the one statement
plot(dose,drugA,type="b",cex=4,sub="sub title",cex.axis=2,cex.lab=2,cex.main=2,cex.sub=2)

#Specifying the FONT family , size and style
opar <- par(no.readonly=TRUE) 
par(font=4)# font options for the plotted text 1=plain,2=bold,3=italic,4=bold italic and 5=symbols
par(font.axis=2)#font.axis options for font for axis text
par(font.lab=2)#font.lab options for font for axis labels
par(font.main=2)#font.main options for font for titles
par(font.sub=1)#font.sub options for font for subtitles
#par(cex=1,ps=2)#ps options font point size. text size=ps*cex
par(family="mono")#family font family for standard values serif,sans and mono
plot(dose,drugA,type="b",main="Main title",sub="Subtitle",xlab="X axis",ylab="Y axis")
par(opar)

#mapped by WINDOWS fonts assigning the map values
names(windowsFonts())#check the fonts list and for mac its quartzFonts()
opar <- par(no.readonly=TRUE) 
windowsFonts(A=windowsFont("Arial Black"),B=windowsFont("Comic Sans MS"),C=windowsFont("leelawdb")) #map the windows fonts by letters
par(family="B")
plot(dose,drugA,type="b",main="Main title",sub="Subtitle",xlab="X axis",ylab="Y axis")
par(opar)

#for PDFFonts
names(pdfFonts())#check the pdf fonts.
pdf("mygraph.pdf",family="AvantGarde")#family options for the pdf fonts
attach(mtcars)
plot(wt,mpg)
abline(lm(mpg~wt))
title("Regression of MPG on Weight")
detach(mtcars)
dev.off()
#the above statment can be written in one statements
plot(dose,drugA,type="b",main="Main title",sub="Sub title",xlab="X Axis",ylab="Y Axis",font.axis=2,font.lab=1,font.main=4,font.sub=2,cex=2,ps=14,family="serif")

#GRAPHS and MARGIN Dimensions
#-----------------------------
#basically controls the plot dimensions and margin sizes
# check the website for more informations http://research.stowers-institute.org/efg/R/Graphics/Basics/mar-oma/ options overview
opar <- par(no.readonly=TRUE)
par(pin=c(1,1))#pin options supplies plot dimensions with width and height
par(mai=c(1,.5,1,.2)) # mai options numeric vector indicating in inches c(bottom,left,top,right)
plot(dose,drugA,type="b",col="red")
par(opar)

#Example combing to control graph appearance
dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)
opar <- par(no.readonly=TRUE)
par(pin=c(2,3))
par(lwd=2,cex=1.5)
par(cex.axis=.75,font.axis=3)
plot(dose,drugA,type="b",ylab="DrugA",pch=19,lty=2,col="red")
plot(dose,drugB,type="b",ylab="DrugB",pch=23,lty=6,col="blue",bg="green")
par(opar)




