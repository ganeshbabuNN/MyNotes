#dataframe is a like a dataset

id <- c(1,2,3,4)
admindate <- c("10/15/2015","11/16/2015","12/13/2015","14/12/2015")
name <- c("ganesh","star","hari","gana")
age <- c(12,13,15,17)
classtype <- c("Class1","Class2","Class1","Class2")
Performance <- c("status","Weak","Good","Excellent")
#create the data frame object
studentdata <- data.frame(id,admindate,name,age,classtype,Performance) 

#head functions list first part of the an object
head(studentdata)

#Trial functions last part of the object
trail(studentdata)
