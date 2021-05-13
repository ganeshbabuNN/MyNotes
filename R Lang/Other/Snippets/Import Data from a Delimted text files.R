# delimited file
################

#sample student csv file on the any locations
studentid,first,last,math,science,social studies
011,bob,smith,90,80,67
012,jane,weary,75,,80
013,dan,"thornton,III",65,75,70
040,Mary,"O'Leary",90,95,92

#file can be imported into a data frame using below and pass SKIP=1 parameter to skip the first line if required
g <- read.table("students.csv",header=TRUE,row.names="studentid",sep=",")

#object structures
str(g)

#Observetion
#The term social studies renamed to follow R conventions
#studentid column is now a row names, no longer a label and lost leading zero
#the missing science grade for jane is correctly read as missing.
#quotations marks around dan last name in order to escape the comma betwen thornton and III
#for mary single quotations marks around O'Leary other else R will have read the single quote as string delimiter.
#finally first and last names are converted as factors
#By default read.table() converts character value to factor

#Let us suppress this behaviour for all character variables including the optio stringAsFactors=FALSE and colClasses options to specify a class
grades <- read.table("students.csv",header=TRUE,row.names="studentid",sep=",",colClasses=c("character","character","character","numeric","numeric","numeric"),stringsAsFactor=FALSE)

#read directly using read.csv functions
g <- read.csv("students.csv")

