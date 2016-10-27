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

#Sorting the data
#---------------------------

#Sorting using Order function . by default it sort to ascending
#On numeric variable by ascending by default
newdata <- leadership[order(leadership$manager)]
#On numeric variable to descending
newdata <- leadership[order(-leadership$manager)]
#other way just including all the variable name of the dataframe
newdata <- leadership[order(manager),]
#two numeric variable where by manager and then age
newdata <- leadership[order(manager,age),] 
#two numeric variable where by manager as ascending and then age by descending using '-'notations
newdata <- leadership[order(manager,-age),] 
#Similarly to character variable ascending by default
newdata <- leadership[order(gender),]
#Similarly to character variable to descending
newdata <- leadership[order(-as.numeric(as.factor(gender))),]
#for two character vector by default ascending
newdata <- leadership[order(country,gender),]
#for two character vector one is descending and other is descending
newdata <- leadership[order(-as.numeric(as.factor(country)),gender),]



#if one numeric variable(age) by ascending and other character variable(gender) by descending
newdata <- leadership[order(-as.numeric(as.factor(gender)),age),]

#Conculsion
#The idea is that you can apply -sign in order function ony on numericals.
#So for sorting character strings in descending order you have to coerce them to numericals


#Popular Packages
#----------------
install.packages("plyr") #powerful set of function for manipulating datsets
install.packages("dplyr") # dplyr is the next iteration of plyr, focussed on tools for working with data frames (hence the d in the name). 
install.packages("doBy") 

#using arrange function from plyr package
library(plyr)
attach(leadership)
arrange(leadership,desc(as.Date(date,"%y/%d/%m")),gender,age)
detach(leadership)
#using arrange function from dplyr package
library(dplyr)
attach(leadership)
arrange(leadership,desc(as.Date(date,"%y/%d/%m")),gender,age)
detach(leadership)
#using order by function from doBy
library(doBy)
data(dietox)
orderBy(~Time+Evit, data=dietox)
## Sort decreasingly by Time
orderBy(~-Time+Evit, data=dietox)
