#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Data Management"))

manager <- c(1,2,3,4,5)
date <- c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09")
country <- c("US","US","UK","UK","UK")
gender <- c("M","F","F","M","F")
age <- c(32,45,25,39,99)
q1 <- c(5,3,3,3,2)
q2 <- c(4,5,5,3,2)
q3 <- c(5,2,5,4,1)
q4 <- c(5,5,5,NA,2)
q5 <- c(5,5,2,NA,1)
leadership <- data.frame(manager,date,country,gender,age,q1,q2,q3,q4,q5,stringsAsFactors = FALSE)

#Selecting variables(Keeping)
#----------------------------

names(leadership)
#Accessing the variable of the data frame using notations(column index) leaving row indices blank (,)
newdata <- leadership[,(1:3)]

#Accessing the variables of the data frame variable name in quotes
myvar<- c("q1","q2","q3","q4","q5")
newdata <- leadership[(myvar)]

#using paste() functions to create the same character vector 
myvars <- paste("q",1:5,sep="")
newdata <- leadership[myvars]

#Exculding variables(Dropping)
#-----------------------------
#using the %in% options excluding q3 and q4 column 
myvars <- names(leadership) %in% c("q3","q4")
newdata<- leadership[!myvars]

#Another way using column indix with a minux sign(-)
newdata<- leadership[c(-8,-9)]

#Another way using NULL assignment
#this is not same as NA
leadership$q3 <- leadership$q4 <- NULL # recod directly in the data frame

#Selecting Observations(records)
#-------------------------------
#Accessing the observations using row index
newdata <- leadership[(1:3),]

#Another way Accessing the observations on the variable restriction applying logical operation
#the below samples list of datasets of gender male whose age are less then 40
newdata <- leadership[leadership$gender=="M" & leadership$age < 40,]

#Optimizing the above code using attach and detach functions
attach(leadership)
newdata <- leadership[gender=="M" & age > 20,]
detach(leadership)

#Handling the dates using which options 
leadership$date <- as.Date(leadership$date,"%y/%d/%m")
startdate <- as.Date("2008-03-20")
enddate <- as.Date("2010-08-21")
newdata <- leadership[which(leadership$date >= startdate & leadership$date <= enddate),]

#Subset() functions
#------------------
#selecting the variables and observations in optimised way
newdata <- subset(leadership,  age > 35 & age < 40,select=c(age,q1,q2,q3,q4))

#selecting the variables and observations using colon operator("from" variable "to" variable)
newdata <- subset(leadership,gender="M" & age > 25 ,select=gender:q4)

#Random Samples
#--------------
is.data.frame(cars)
#Using the sample functions
mysample <- cars[sample(1:nrow(cars),3,replace = FALSE),]

#Popular packages For sampling
#-----------------------------
install.packages("sampling") # For sampling, including drawing and calibrating sury samples
install.packages("survey") # For complex survey data
#some of the methods includes resampling, including bootstrapping and resampling statistics


#SQL Samples
#-----------
install.packages("sqldf")
library("sqldf")

#Select with where clause
newdata <- sqldf("select * from leadership where age >40",row.names=TRUE)

#Group by clause
newdata <- sqldf("select gender,count(manager) as Manager_count from leadership group by gender")

#aggreations
newdata <- sqldf("select gender,avg(q1),avg(q2) from leadership group by gender")









