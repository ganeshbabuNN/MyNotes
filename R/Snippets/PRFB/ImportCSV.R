#Set working directory
setwd(file.path("F:","PS","R","Mod9"))
#Set file path
file <- file.path("data","01Sample.csv")
my.data <- read.csv(file)
str(my.data)
my.data