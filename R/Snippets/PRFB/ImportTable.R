#Set working directory
setwd(file.path("F:","PS","R","Mod9"))
#Set file path
file <- file.path("data","02Sample.txt")
my.data <- read.table(file,
                      header=TRUE,          
                      skip=1,
                  colClasses=c("character","factor","numeric","integer","integer"))
str(my.data)