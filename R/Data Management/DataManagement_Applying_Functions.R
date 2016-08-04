#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Data Management"))

#Sample data
manager <- c(1,2,3,4,5)
date <- c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09")
country <- c("US","US","UK","UK","UK")
gender <- c("M","F","F","M","F")
age <- c(32,45,25,39,95)
q1 <- c(5,3,3,3,2)
q2 <- c(4,5,5,3,2)
q3 <- c(5,2,5,4,1)
q4 <- c(5,5,5,NA,2)
q5 <- c(5,5,2,NA,1)
leadership <- data.frame(manager,date,country,gender,age,q1,q2,q3,q4,q5,stringsAsFactors = FALSE)

#Type conversations
#---------------------------
age
#Testing and converting  Type in R
is.numeric(age) #Testing has numeric
as.numeric(age) #converting to numeric
is.character(age) #Testing has character
as.character(age) #converting to character
is.vector(age) #Testing has vector
as.vector(age) #converting to vector
is.matrix(age)#testing has matrix
as.matrix(age)#converting to matrix
is.data.frame(age) #testing has data frame
as.data.frame(age) #converting to data frame
is.factor(country)#testing has factor
as.factor(country)#converting to factor
is.logical(gender)#Testing has logical
as.logical(gender)#converting to logical

#demo
a <- c(1,2,3)
a
is.numeric(a)
is.vector(a)
a <- as.character(a) #converting to character and now check other type
is.numeric(a)
is.vector(a)
is.character(a)

#Popular function
is.datatype() #powerful tool allow you to handle data in different ways depending on its type.
as.datatype() #lets you transform your data into the format required prior to analyses.