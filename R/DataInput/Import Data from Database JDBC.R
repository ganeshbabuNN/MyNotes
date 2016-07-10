# for JDBC 
#####################
#set the path if required and place the Oracle jar
setwd(file.path("C:","R_Workspace"))

#firstly install the packages for JDBC 
install.packages("RJDBC")

#load the package for these sessions
library(RJDBC)

#load the driver class
drv <- JDBC("oracle.jdbc.OracleDriver",classPath="ojdbc6.jar", " ")# Oracle
drv <- JDBC("com.mysql.jdbc.Driver",classPath="mysql-connector-java-3.1.14-bin.jar", " ")# mySQL


#get the URI with user crendentials.
con <- dbConnect(drv, "jdbc:oracle:thin:@localhost:1521:orcl", "hr", "hr")# Oracle
con <- dbConnect(drv, "jdbc:mysql://localhost/test", "hr", "hr")# mySQL

#Query the table
a <- dbGetQuery(con, "select employee_id,first_name,salary from employees")

#Reading the table directly from the schema
d <- dbReadTable(con, "employees")
dbDisconnect(con)

