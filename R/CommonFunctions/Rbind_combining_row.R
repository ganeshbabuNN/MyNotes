# data1.csv
id,admindate,name 
1,10/15/2015,ganesh  
2,11/16/2015,star  
3,12/13/2015,hari  
4,14/12/2015,gana  

# data1add.csv
id,admindate,name 
5,10/32/2012,naveen 
6,11/3/2013,yash
7,12/22/2014,star  
8,14/43/2016,vedal  


#setting the workspace where those csv file are been stored
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","CommonFunctions"))

#reading the csv files 
a <- read.csv("data1.csv",header=T,sep=",")
b <- read.csv("data1add.csv",header=T,sep=",")

#rbind() function combines vector, matrix or data frame by rows. and form one datasets.
studentdata <- rbind(a,b)
