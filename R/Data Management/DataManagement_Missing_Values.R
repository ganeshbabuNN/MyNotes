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

#Identifying the missing values
#---------------------------
#using is.na() funtions returns a boolean value
is.na(leadership[6:9])
#Similary for the Infinity
x <- is.infinite(5/0)
#Similary for the Not a Number(NaN)
x <- is.nan(NaN)

#Recoding the values to Missing
#------------------------------
leadership$age[leadership$age == 99 ] <- NA

#Excluding the values Missing from analysis
#------------------------------------------
#Sample numeric vector containing missing value
x<- c(1,2,NA,3)
#adding by positions index resulting to NA
y<- x[1]+ x[2]+x[3]+x[4]
#adding using sum function resulting to NA
z<-sum(x)
#exclding missing value element using na.rm options
z<-sum(x,na.rm=TRUE)
#exclding observations that contain missing value using na.omit() functions also called liktwise deletions
leadership
newdata <- na.omit(leadership)



