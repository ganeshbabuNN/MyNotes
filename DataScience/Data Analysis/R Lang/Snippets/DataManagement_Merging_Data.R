#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Data Management"))

#leadership dataset 1
manager <- c(1,2,3,4,5)
date <- c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09")
country <- c("US","US","UK","UK","UK")
gender <- c("M","F","F","M","F")
#age <- c(32,45,25,39,99)
age <- c(32,75,25,39,99)
q1 <- c(5,3,3,3,2)
q2 <- c(4,5,5,3,2)
q3 <- c(5,2,5,4,1)
q4 <- c(5,5,5,NA,2)
q5 <- c(5,5,2,NA,1)
leadership <- data.frame(manager,date,country,gender,age,q1,q2,q3,q4,q5,stringsAsFactors = FALSE)#

#leadership dataset 2
manager <- c(1,2,3,4,5,6)
name <- c("ganesh","ved","gaja","kal","ashu","vig")
position <- c("CEO","director","Manager","CIO","AssManager","Manager")
leadershipdet <- data.frame(manager,name,position)

#Adding Column to a data frame
#-----------------------------

#Using merge function if both dataset have common key variable with same var name
merge(leadership,leadershipdet,by="manager")

#Assume the leadership has different variable name
id <- c(1,2,3,4,5,6,7,NA)
name <- c("ganesh","ved","gaja","kal","ashu","ba","su","dd")
position <- c("CEO","director","Manager","CIO","AssManager","CIO","AssManager",NA)
leadershipdet <- data.frame(id,name,position)

#Using merge function if both dataset have common key variable with different var name
merge(leadership,leadershipdet,by.x="manager",by.y="id")

#missing obs from the leadershipdet dataset using all options
merge(leadership,leadershipdet,by.x="manager",by.y="id",all=TRUE)

# example of using 'incomparables'
x <- data.frame(k1 = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5), data = 1:5)
y <- data.frame(k1 = c(NA,2,NA,4,5), k2 = c(NA,NA,3,4,5), data = 1:5)
merge(x, y, by = c("k1","k2")) # NA's match 
merge(x, y, by = "k1") # NA's match, so 6 rows 
merge(x, y, by = "k2", incomparables = NA) # 2 rows

#Horizontal contenation with cbind() function by colums

#for this each object must have the same number of obs  and be in sorted manner
a<- cbind(x,y)

#Adding Rows to a data frame
#-----------------------------
#using rbind fuctions, both the datasets have same variable, typically add the observations
a<- rbind(x,y)



