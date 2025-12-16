########
# For SAS
################
# set the path
setwd(file.path("C:","R_Workspace"))

#install the packages
install.packages("Hmisc")

#load the library
library(Hmisc)
setwd("C:/R_Workspace")

##Only if the sas has been installed.
#Windows
datadir <- "C:/R_Workspace"
sasexe <- "C:\\Program Files\\SASHome\\SASFoundation\\9.3\\sas.exe"
mydata <- sas.get(libraryName=datadir,member="hospital",sasprog=sasexe)


#SAS Program to save SAS dataset as a comma-delimited text file from within SAS using proc export.
libname datadir "C:\R_Workspace";
proc export data=datadir.hospital
	outfile='C:\R_Workspace\hospital.csv'
	dbms=csv;
run;

#R program to read the resulting file into R using method.
mydata <- read.table("hospital.csv",header=TRUE,sep=",")

########
##If not SAS software isntalled and get data from sas data set
########
#install the packages and check the System architecture before downloading
install.packages("sas7bdat")

#load the library
library(sas7bdat)

#read the variables using read.sas7bdat method
mydata <- read.sas7bdat("hospital.sas7bdat")

#access data from data frame
mydata$age
mydata[c("name","age")]
mydata[1:2]
mydata[1,1]





