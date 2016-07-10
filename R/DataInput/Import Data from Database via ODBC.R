# For Oracle
################
#firstly install the packages for JDBC
install.packages("RODBC")

#Set the ODBC connections to the Using the DSN name
#Check even the system architectures configurations as well

#Load the Library
library(RODBC)

#URI
con <- odbcConnect(dsn="ROracle", uid="hr", pwd ="hr", believeNRows=FALSE)

#Query statement
sqlQuery(con, "select count(*) from employees")
d <- sqlQuery(con, "select * from employees")

#close the connection
close(con)

#access data from data frame
d$FIRST_NAME
d[c("FIRST_NAME","SALARY")]
d[2:3]
d[1,3]

