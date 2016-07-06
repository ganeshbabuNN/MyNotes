# For Oracle
################
#firstly install the packages for JDBC
install.packages("RODBC")

#Set the ODBC connections to the Using the DSN name
#Check even the bit machines configurations as well

library(RODBC)
con <- odbcConnect(dsn="ROracle",uid="hr",pwd ="Ga55word",believeNRows=FALSE)
sqlQuery(con, "select count(*) from employees")
d <- sqlQuery(con, "select * from employees")
close(con)

