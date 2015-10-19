#Set working directory
setwd(file.path("F:","PS","R","Mod9"))
#Set file path
file <- file.path("data","04Sample.xml")
install.packages("XML")
library(XML)
my.data <- xmlToDataFrame(file,
                          colClasses=c("character","integer","integer"),
                          stringsAsFactors=FALSE)
str(my.data)