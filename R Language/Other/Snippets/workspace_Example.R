#set the workspace locations
setwd("C:\\R_workspace")#windows
setwd("C:\\R_workspace\\xml")#windows since single back slash is treated as escape character
setwd("C:/R_workspace/xml")#windows
setwd("/Users/<username>/Documents/Folder")#mac or linux
setwd(file.path("C:","R_workspace")) #argument has each folder name using file.path method

#current options are displayed
options()

#options are formatted to print with three digits after the decimal places
options(digits=3)

#Next 20 uniform random variables are created 
x <- runif(20)

#summary statistics
summary(x)

#histogram based on this data are generated
hist(x)

#quit functions 
q()
