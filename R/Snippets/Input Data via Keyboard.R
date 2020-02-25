# Keyboard
################


#creating a empty data frame(or matrix) with variables names and mode you want to have in final dataset.
#age=numeric(0) creates a variable of specific mode but without actual data. Note that the result is assigned back to the object itself
mydata <- data.frame(age=numeric(0),gender=character(0),weight=numeric(0))

#to invoke a text editor using edition function or fix objects
mydata <- edit(mydata)
mydata <- fix(mydata) # a shortcut for edit functions

#directly embding the data into program
mydatatext <- 
"age weight
23 166
30 115
44 100"

#read.tabe() functions is used to process the string and return a data frame.
mydata <- read.table(header=TRUE,text=mydatatext)

