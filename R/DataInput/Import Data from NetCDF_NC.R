# For NetCDF- TBD
################
#firstly install the packages for xlsx
# set the path
setwd(file.path("C:","R_Workspace"))

#install the packages
install.packages("ncdf")
#ncdf4 support version 4

#load the library
library(ncdf)

#Mapped to an object and read the stata dataset
nc <- nc_open("mynetCDFfile")
myarray <- get.var.ncdf(nc,myvar)

#access data from data frame








