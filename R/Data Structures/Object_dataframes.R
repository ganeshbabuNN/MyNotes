#dataframe is a like a dataset

studentid <- c(1,2,3,4)
admindate <- c("10/15/2015","11/16/2015","12/13/2015","14/12/2015")
studentname <- c("ganesh","star","hari","gana")
age <- c(12,13,15,17)
classtype <- c("Class1","Class2","Class1","Class2")
Performance <- c("status","Weak","Good","Excellent")
#create the data frame object
studentdata <- data.frame(studentid,admindate,studentname,age,classtype,Performance) 


#Accesing the variable using subscript notations by positional notations of data frame
studentdata[2:4]

#Accessing the element using the array concept by the row and column of data frame
studentdata[1,3]

#Accessing more then one variable of data frame
studentdata[c("studentid","admindate")]

#Other way of accessing that specificate variable of the dataframe using dollor($) symbol notations
studentdata$age

#cross-tabulate the class with performace
table(studentdata$classtype,studentdata$Performance)





