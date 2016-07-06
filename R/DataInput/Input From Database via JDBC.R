# for Oracle
#####################
#firstly install the packages for JDBC 
install.packages("RJDBC")

#locate the OJDBC jar to the classPath or to the current directly

library(RJDBC)
drv <- JDBC("oracle.jdbc.OracleDriver",classPath="ojdbc6.jar", " ")
con <- dbConnect(drv, "jdbc:oracle:thin:@localhost:1521:orcl", "hr", "Ga55word")
#dbWriteTable(con, "TEST_TABLE", test_table)
dbGetQuery(con, "select count(*) from employees")
d <- dbReadTable(con, "employees")
dbDisconnect(con)