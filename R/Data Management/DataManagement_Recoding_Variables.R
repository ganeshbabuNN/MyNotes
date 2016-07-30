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

#Recoding the variables
#---------------------------
#Recording the variables are achieved using the logical operators

#assign the value as missing value
leadership$age[leadership$age == 99 ] <- NA

#continuous varialble age to categorical variable
leadership$agecat[leadership$age > 75] <- "Elder"
leadership$agecat[leadership$age >= 55 & leadership$age <= 75] <- "Middle Aged"
leadership$agecat[leadership$age  < 55] <- "young"

#other way using within() like with() but it allows to modify the data frame.
leadership <- within(leadership,{
     agecat <- NA
     agecat [age > 75]  <- "Elder"
     agecat [age >= 55 & age <= 75 ] <- "Middle Aged"
     agecat [age < 55] <- "Young"
})

#Popular Packages
#----------------
install.packages("car") # many functions for recoding variables
install.packages("doBy") #popular function for recoding variables

#using recode() functions in car package
install.packages("car",dependencies=TRUE)
library(car)
leadership$agecat <- recode(leadership$age,"99='NA'")

#popular packages doBy packages using reVar() functions
install.packages("doBy",dependencies=TRUE)
library(doBy)
x <- c("dec","jan","feb","mar","apr","may")
src1 <- list(c("dec","jan","feb"), c("mar","apr","may"))
tgt1 <- list("winter","spring")
y <- recodeVar(x,src=src1,tgt=tgt1)






 