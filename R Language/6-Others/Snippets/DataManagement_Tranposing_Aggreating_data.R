#Transposing reshaping
#---------------------
mtcars
class(mtcars)
#Select the samples variable and observations from datasets
cars <- mtcars[1:4,1:5]
#Transposing the data using tanspose t() functions
t(cars)

#Aggreations
#-----------
attach(mtcars)
aggdta <- aggregate(mtcars,by=list(cyl,gear),FUN=mean,na.rm=TRUE)
#for labeling the group variable
aggdta <- aggregate(mtcars,by=list(gropu.cyl=cyl,group.gears=gear),FUN=mean,na.rm=TRUE)

#Popular Packages
#----------------
#more flexiable way of transposing the data using reshape2 package

install.packages("reshape2")
library("reshape2")
#Measurement datasets
id <- c(1,1,2,2)
time <- c(1,2,1,2)
x1 <- c(5,3,6,2)
x2 <- c(6,5,1,4)
c <- c(1,2,NA,NA)
mydata <- data.frame(id,time,x1,x2,c)

#MELT()
#-----
#this functions restructure it into a format in which each measurement 
#ariables needed to uniquely identify each measurement(ID and time) and the 
#variables indicating the measurement variable names (x1 or X2) is create automatically
md <- melt(mydata,id=c("id","time"))
#Casting()
#---------
#it reshape into the new data frame
#based on the md dataset 

#With aggreations
#Here it gives mean of X1 and X2 of each ID
dcast(md,id~variable,mean)
#Here it gives mean of X1 and X2 of each Time
dcast(md,time~variable,mean)
#Here it gives mean of Time  of each ID excluding NA
dcast(md,id~time,mean,na.rm=TRUE)

#Without aggreations
#Here it transformed into unique variable X1 + X2 with ID and Time
dcast(md,id+time~variable)
#Here it transformed into unique variable time with ID and variable
dcast(md,id+variable~time)
#Here it transformed into unique variable time+Variable with ID
dcast(md,id~variable+time)




