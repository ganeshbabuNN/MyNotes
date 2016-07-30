#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Data Management"))

#Sample data
mydata <- data.frame(x1= c(2,3,4,5),x2=c(3,2,4,2)))

#creating the new variables
#---------------------------
#creating the variable may be applied using the arthmetic variable 
#1st way, 
mydata$sumx <- mydata$x1+mydata$x2
mydata$meanx <- (mydata$x1+mydata$x2)/2
#2nd way, # best way using the attach and detach functions
attach(mydata)
mydata$sumx <- x1 + x2
mydata$meanx <- (x1+x2)/2
detach(mydata)
mydata
#3rd way, using Transform functions
mydata <- transform(mydata,sumx = x1 + x2,meanx =(x1+x2)/2




 