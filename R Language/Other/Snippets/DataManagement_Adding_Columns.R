# data1.csv
id,admindate,name 
1,10/15/2015,ganesh  
2,11/16/2015,star  
3,12/13/2015,hari  
4,14/12/2015,gana  

# data2.csv
gender,classtype,Performance
male,Class1,status
female,Class2,Weak
male,Class1,Good
female,Class2,Excellent

#setting the workspace where those csv file are been stored
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Data Management"))
dir()
#reading the csv files 
a <- read.csv("data1.csv",header=T,sep=",")
b <- read.csv("data2.csv",header=T,sep=",")

#combine both the column into on variables using cblind functions and form one datasets.
studentdata <- cbind(a,b)
