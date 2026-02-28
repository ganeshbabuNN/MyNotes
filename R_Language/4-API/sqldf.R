




#What is sqldf?
##The sqldf package allows you to run SQL queries directly on R data frames.
##It is very useful if:
##You know SQL but not dplyr
##You are transitioning from SQL to R
##You want complex joins/subqueries easily
##Internally it uses:
###SQLite (default)
###H2
###PostgreSQL
###MySQL

#Install & Load Packages
install.packages("sqldf")
install.packages("nycflights13")

library(sqldf)
library(nycflights13)
library(dplyr)

#Core sqldf() Function
##You write SQL exactly like database SQL.
sqldf("SQL QUERY")

#SELECT (Data Selection)
##Select Specific Columns
sqldf("
SELECT year, month, day, carrier, dep_delay
FROM flights
LIMIT 10
")

##Select with Aliasing
sqldf("
SELECT year, month, day, carrier, dep_delay
FROM flights
LIMIT 10
")

##Select with Aliasing
sqldf("
SELECT carrier AS airline_code,
       dep_delay AS departure_delay
FROM flights
LIMIT 5
")

#WHERE (Filtering Data)
#Flights with departure delay > 60 minutes
sqldf("
SELECT *
FROM flights
WHERE dep_delay > 60
")
#Multiple Conditions
sqldf("
SELECT *
FROM flights
WHERE dep_delay > 60
AND origin = 'JFK'
")
##Using IN
sqldf("
SELECT *
FROM flights
WHERE carrier IN ('AA', 'UA', 'DL')
")
##Using BETWEEN
sqldf("
SELECT *
FROM flights
WHERE month BETWEEN 6 AND 8
")
##Using LIKE
sqldf("
SELECT *
FROM airports
WHERE name LIKE '%International%'
")
##ORDER BY (Sorting)
sqldf("
SELECT carrier, dep_delay
FROM flights
ORDER BY dep_delay DESC
LIMIT 10
")
#DISTINCT
sqldf("
SELECT DISTINCT carrier
FROM flights
")

#GROUP BY (Aggregation)
##Average departure delay by airline
sqldf("
SELECT carrier,
       AVG(dep_delay) AS avg_delay
FROM flights
GROUP BY carrier
ORDER BY avg_delay DESC
")
##Count Flights per Airport
sqldf("
SELECT origin,
       COUNT(*) AS total_flights
FROM flights
GROUP BY origin
")

#HAVING (Filter Aggregated Data)
sqldf("
SELECT carrier,
       AVG(dep_delay) AS avg_delay
FROM flights
GROUP BY carrier
HAVING avg_delay > 10
")

#JOIN Operations
##INNER JOIN
##Join flights with airlines:
sqldf("
SELECT f.year, f.month, f.day,
       a.name AS airline_name,
       f.dep_delay
FROM flights f
INNER JOIN airlines a
ON f.carrier = a.carrier
LIMIT 10
")
##LEFT JOIN
sqldf("
SELECT f.*, p.manufacturer
FROM flights f
LEFT JOIN planes p
ON f.tailnum = p.tailnum
LIMIT 10
")
#RIGHT JOIN (Simulated)
##SQLite does not support RIGHT JOIN directly. Use reverse LEFT JOIN:
sqldf("
SELECT *
FROM airlines a
LEFT JOIN flights f
ON f.carrier = a.carrier
")
#Multiple Joins
sqldf("
SELECT f.carrier,
       a.name,
       p.manufacturer,
       AVG(f.dep_delay) AS avg_delay
FROM flights f
JOIN airlines a ON f.carrier = a.carrier
JOIN planes p ON f.tailnum = p.tailnum
GROUP BY f.carrier
")


#Subqueries
##Flights above average delay
sqldf("
SELECT *
FROM flights
WHERE dep_delay >
      (SELECT AVG(dep_delay) FROM flights)
")
##Subquery in FROM
sqldf("
SELECT carrier, avg_delay
FROM (
     SELECT carrier,
            AVG(dep_delay) AS avg_delay
     FROM flights
     GROUP BY carrier
     )
WHERE avg_delay > 10
")

#CASE WHEN (Conditional Logic)
sqldf("
SELECT carrier,
       dep_delay,
       CASE
         WHEN dep_delay < 0 THEN 'Early'
         WHEN dep_delay BETWEEN 0 AND 15 THEN 'On Time'
         ELSE 'Delayed'
       END AS delay_status
FROM flights
LIMIT 20
")

#Create Temporary Tables
sqldf("
CREATE TABLE delayed_flights AS
SELECT *
FROM flights
WHERE dep_delay > 60
")

#Using Functions in SQL
#SQL-->Function	Example
#COUNT()-->COUNT(*)
#AVG()-->AVG(dep_delay)
#SUM()-->SUM(dep_delay)
#MIN()-->MIN(dep_delay)
#MAX()-->MAX(dep_delay)
#ROUND()-->ROUND(AVG(dep_delay), 2)

sqldf("
SELECT carrier,
       ROUND(AVG(dep_delay), 2)
FROM flights
GROUP BY carrier
")

#Handling Missing Values
##SQLite treats NA as NULL.
sqldf("
SELECT *
FROM flights
WHERE dep_delay IS NULL
")

#Window Functions (Advanced)
##SQLite in sqldf supports some window functions.
sqldf("
SELECT carrier,
       dep_delay,
       RANK() OVER (PARTITION BY carrier ORDER BY dep_delay DESC) AS rank_delay
FROM flights
LIMIT 20
")


#Combining Results (UNION)
sqldf("
SELECT carrier FROM flights WHERE origin='JFK'
UNION
SELECT carrier FROM flights WHERE origin='LGA'
")

#Performance Tips
#For large datasets:
options(sqldf.driver = "SQLite")
options(sqldf.connection = DBI::dbConnect(RSQLite::SQLite(), ":memory:"))

#For very large data:
##Consider data.table
##Consider duckdb
##Consider sparklyr

#Exporting Result
result <- sqldf("SELECT * FROM flights LIMIT 100")
write.csv(result, "output.csv", row.names = FALSE)
