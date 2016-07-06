#set the workspace locations
setwd("C:\R_workspace")
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