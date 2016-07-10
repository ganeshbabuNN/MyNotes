# For Web
################

#create the object of the URL contains data endpoint.
url<- "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"

#set the path
setwd(file.path("C:","R_Workspace","iris"))

#mapped a local path where data to be download
local <- file.path("iris","iris.data")

#Download the data from URL to local path as set
download.file(url,local)

#create a dataframe by read the dataset with delimiter
mydata <- read.table(local,sep=",")

#access data from data frame
mydata$V1
mydata[c("V1","V2")]
mydata[2:3]
mydata[1,3]






