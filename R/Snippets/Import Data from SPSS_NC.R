# For SPSS- TBD
################
#firstly install the packages for xlsx
# set the path
setwd(file.path("C:","R_Workspace"))

#install the packages
install.packages("Hmisc")

#load the library
library(Hmisc)

#Mapped to an object
mydataframe <- spss.get("XXX.sav", use.value.labels=TRUE)

#access data from data frame







