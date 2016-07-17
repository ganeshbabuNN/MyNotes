# For XML
################
#firstly install the packages for xlsx
# set the path
setwd(file.path("C:","R_Workspace"))

#install packages based upon the XX system architecture
install.packages("XML")

#load the library
library(XML)

#Create the Excel file in sample location
C://students

#Mapped to an object
workbook <- "c:/students.xml"
#OR
file <- file.path("students.xml")

#read the variables using read function along with the sheet no
dfxml <- xmlToDataFrame(file,colClasses=c("character","numeric","numeric","numeric"),stringsAsFactors=FALSE)

#access data from data frame
dfxml$name
dfxml[c("math","science")]
dfxml[1:3]
dfxml[1,3]

#Reading the HTML table 
require(XML)
bowl <- readHTMLTable("http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/",header=FALSE,stringAsFactors=FALSE,which=1)






