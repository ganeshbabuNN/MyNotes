install.packages("RODBC")
library(RODBC)
connect <- odbcConnect("mysqlconnection")
my.data <- sqlQuery(connect, "SELECT * FROM test.classroom")
my.data