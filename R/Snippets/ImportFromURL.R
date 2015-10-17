url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
setwd(file.path("F:","PS","R","Mod9"))
local <- file.path("data","03DownloadedFile.data")
download.file(url,local)
my.data <- read.table(local,sep=",")
str(my.data)
#Use RCurl package for advanced scenarios 