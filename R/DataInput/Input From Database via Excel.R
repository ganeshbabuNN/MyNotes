# For MS Excel
################
#firstly install the packages for xlsx
#Ensure the bit machines to be mapped to R conscole
install.packages("xlsx",dependencies=TRUE)

#load the library
library(xlsx)

#Create the Excel file in sample location
C://hello.xlsx

#Mapped to an object
workbook <- "c:/hello.xlsx"

#read the variables using read function along with the sheet no
df <- read.xlsx(workbook,1)

#access through dataframe for single variable
df$name

#multi variable
df[c("name","class")]






