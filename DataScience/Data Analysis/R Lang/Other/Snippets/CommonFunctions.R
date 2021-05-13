#dataframe is a like a dataset

id <- c(1,2,3,4)
admindate <- c("10/15/2015","11/16/2015","12/13/2015","14/12/2015")
name <- c("ganesh","star","hari","gana")
age <- c(12,13,15,17)
classtype <- c("Class1","Class2","Class1","Class2")
Performance <- c("status","Weak","Good","Excellent")
#create the data frame object
studentdata <- data.frame(id,admindate,name,age,classtype,Performance) 

#length of the object
length(studentdata) #count of the variable
length(studentdata$age)#count of the observations of that variable

#dimensions of an object
dim(studentdata)

#structure of an object using str() functions
str(studentdata)

#class of an object using class functions
class(studentdata)

#how an object is stored using object functions
mode(studentdata$age)

#name of an object using name functions
name(studentdata)

#combine object into a vector using c functions
age <- c(12,13,15,17)
