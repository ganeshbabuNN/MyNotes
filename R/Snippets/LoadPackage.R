search() 

#Load package using library function
library("parallel") 
library(parallel) #without quotes
search()

#Unload or detach a package 
detach(package:parallel, unload=TRUE) 

#Load a library, which is not installed will give error
library(newpackage)
#Use require function, which returns a TRUE or FALSE
if(!require("newpacakge"))
{
  #Download and install package
}
