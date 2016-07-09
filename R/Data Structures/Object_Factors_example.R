#students datasets

#numeric vector
studentid <- c(1,2,3,4)
#character vector
admindate <- c("10/15/2015","11/16/2015","12/13/2015","14/12/2015")
#character vector
studentname <- c("ganesh","star","hari","gana")
#character vector
gender <- c("male","female","male","male")
#numeric vector
age <- c(12,13,15,17)
#character vector
classtype <- c("Class1","Class2","Class1","Class1")
#character vector
performance <- c("Status","Weak","Good","Excellent")
#combine the data into a data frame object as studentdata
studentdata <- data.frame(studentid,admindate,studentname,gender,age,classtype,performance) 

#overide the classtype as nominal variable using factor functions coded internally
classtype <- factor(classtype)

#overide the classtype as ordinal variable using factor functions with ordered and coded internally
performance <- factor(performance,order=TRUE)

#now overide the dataframe
studentdata <- data.frame(studentid,admindate,studentname,age,classtype,performance) 

#display the object structure using structure functions
str(studentdata)

#summary of the datasets
#it treates the variables differently, with continuous variable age ,frequency count for the categorial variables for 
summary(studentdata)
