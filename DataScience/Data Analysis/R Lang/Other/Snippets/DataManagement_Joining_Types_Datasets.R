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

#Inner join
#----------
#joins by default by variables names
merge(leadership,leadershipdet)
#joins Speciby the variable variable name
merge(leadership,leadershipdet,by="manager")
#supply the parameter by.x and by.y if there are different name of both datasets
merge(leadership,leadershipdet,by.x="manager",by.y="manager")

#outer join
#----------
#supply all options with boolean value
merge(leadership,leadershipdet,by="manager",all=TRUE)

#left join
#----------
merge(leadership,leadershipdet,by="manager",all.x=TRUE)

#right join
#----------
merge(leadership,leadershipdet,by="manager",all.y=TRUE)

#Using Subscript method
#----------------------
#A left outer join with leadershipdet  on the left using a subscript method would be #similar can be for left,right..
ms <- leadershipdet[leadership[,c("manager")],"position"]
ms <- leadership[leadershipdet[,c("manager")], c("date","country","age")]

#benchmarking technique
system.time(merge(leadership,leadershipdet))

#Popular Packages
#----------------
install.packages("data.table")
#FAST IN PERFORMANCE
library("data.table")
ds1 <- data.table(leadership,key="manager")
ds2 <- data.table(leadershipdet,key="manager")

joined.ds1.ds2 <- ds1[ds2]
# base::merge also works on data.tables
merge(ds1,ds2)

#**Detailed example on data.table
df1 = data.frame(CustomerId = c(1:6), Product = c(rep("Toaster", 3), rep("Radio", 3)))
# one value changed to show full outer join
df2 = data.frame(CustomerId = c(2L, 4L, 7L), State = c(rep("Alabama", 2), rep("Ohio", 1))) 

library(data.table)

dt1 = as.data.table(df1)
dt2 = as.data.table(df2)
setkey(dt1, CustomerId)
setkey(dt2, CustomerId)
# right outer join keyed data.tables
dt1[dt2]

setkey(dt1, NULL)
setkey(dt2, NULL)
# right outer join unkeyed data.tables - use `on` argument
dt1[dt2, on = "CustomerId"]

# left outer join - swap dt1 with dt2
dt2[dt1, on = "CustomerId"]

# inner join - use `nomatch` argument
dt1[dt2, nomatch=0L, on = "CustomerId"]

# anti join - use `!` operator
dt1[!dt2, on = "CustomerId"]

# inner join
merge(dt1, dt2, by = "CustomerId")

# full outer join
merge(dt1, dt2, by = "CustomerId", all = TRUE)

# see ?merge.data.table arguments for other cases


#dplyr package
#---------------
install.packages("dplyr")
install.packages("dplyr")
insta..packages("dtplyr") # new version
library("dplyr")
library("dtplyr")

#inner join
#return all rows from x where there are matching values in y, and all columns from x and y
inner_join(leadership,leadershipdet,by=NULL,copy=FALSE)

#left join
#return all rows from x, and all columns from x and y 
#interchange the dataset for getting the right join
left_join(leadershipdet,leadership,by=NULL,copy=FALSE)

#semi_join
#return all rows from x where there are matching values in y, keeping just columns from x. 
semi_join(leadershipdet,leadership,by=NULL,copy=FALSE)

#anti_join
#return all rows from x where there are not matching values in y, keeping just columns from x
anti_join(leadershipdet,leadership,by=NULL,copy=FALSE)

#full_join
#return all rows from x where there are not matching values in y, keeping just columns from x
full_join(leadershipdet,leadership,by=NULL,copy=FALSE)

#sqldf package
#-------------
install.packages("sqldf")


