# For SAS
################
# set the path
setwd(file.path("C:","R_Workspace"))

#install the packages
install.packages("Hmisc")

#load the library
library(Hmisc)

#Windows
datadir <- "C:/mydata"
sasexe <- "C:/Program Files/SASHome/SASFoundation/9.4/sas.exe"
mydata <- sas.get(libraryName=datadir,member="clients",sasprog=sasexe)

#access data from data frame






