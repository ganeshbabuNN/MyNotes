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

#Renaming the  variables
#---------------------------
#Recording the variables may be achieved using the logical operators
#Rename the variable interactively
fix(leadership)
#Renaming the variable programatically using names function
names(leadership)
names(leadership)[3] <- "Sex_Code"
#for consecutive variables 
names(leadership)[6:10] <- c("item1","item2","item3","item4","item5")

#Popular packages
#---------------
install.packages("plyr") #powerful set of function for manipulating datsets

#rename() function available.
install.packages("plyr")
library("plyr")
leadership <- rename(leadership,c(manager="manager ID",date="testdata"))