#student dataset

studentid <- c(1,2,3,4)
admindate <- c("10/15/2015","11/16/2015","12/13/2015","14/12/2015")
studentname <- c("ganesh","star","hari","gana")
age <- c(12,13,15,17)
classe <- c("Class1","Class2","Class1","Class2")
Performance <- c("status","Weak","Good","Excellent")
#create the data frame object
studentdata <- data.frame(studentid,admindate,studentname,age,classe,Performance) 

#student is used to identify individuals of the datasets.
studentdata <- data.frame(studentid,admindate,studentname,age,
				classe,Performance,row.names=studentid)





