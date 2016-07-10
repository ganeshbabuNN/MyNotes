# For MS Excel
################
#firstly install the packages for xlsx
#Ensure the bit machines to be mapped to R conscole
install.packages("xlsx",dependencies=TRUE)

#load the library
library(xlsx)

#Create the Excel file in sample location
C://student.xlsx

#Mapped to an object
workbook <- "c:/students.xlsx"

#read the variables using read function along with the sheet no
df <- read.xlsx(workbook,1)

#access data from data frame
df$first
df[c("first","math")]
df[2:3]
df[1,3]






