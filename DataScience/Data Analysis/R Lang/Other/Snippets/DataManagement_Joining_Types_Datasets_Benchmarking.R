#Below benchmark tests base R, sqldf, dplyr and data.table.
#Benchmark tests unkeyed/unindexed datasets. You can get even better performance if you are using keys on your data.tables or indexes with sqldf. Base R and dplyr does not have indexes or keys so I did not include that scenario in benchmark.
#Benchmark is performed on 5M-1 rows datasets, there are 5M-2 common values on join column so each scenario (left, right, full, inner) can be tested and join is still not trivial to perform.

install.packages("microbenchmark")
install.packages("sqldf")
install.packages("dplyr")
install.packages("data.table")
library(microbenchmark)
library(sqldf)
library(dplyr)
library(data.table)

n = 5e6
set.seed(123)
df1 = data.frame(x=sample(n,n-1L), y1=rnorm(n-1L))
df2 = data.frame(x=sample(n,n-1L), y2=rnorm(n-1L))
dt1 = as.data.table(df1)
dt2 = as.data.table(df2)

# inner join
microbenchmark(times = 10L,
               base = merge(df1, df2, by = "x"),
               sqldf = sqldf("SELECT * FROM df1 INNER JOIN df2 ON df1.x = df2.x"),
               dplyr = inner_join(df1, df2, by = "x"),
               data.table = dt1[dt2, nomatch = 0L, on = "x"])
#Unit: milliseconds output

# right outer join
microbenchmark(times = 10L,
               base = merge(df1, df2, by = "x", all.x = TRUE),
               sqldf = sqldf("SELECT * FROM df1 LEFT OUTER JOIN df2 ON df1.x = df2.x"),
               dplyr = left_join(df1, df2, by = c("x"="x")),
               data.table = dt2[dt1, on = "x"])
#Unit: milliseconds output

# full outer join
microbenchmark(times = 10L,
               base = merge(df1, df2, by = "x", all = TRUE),
               #sqldf = sqldf("SELECT * FROM df1 FULL OUTER JOIN df2 ON df1.x = df2.x"), # not supported
               dplyr = full_join(df1, df2, by = "x"),
               data.table = merge(dt1, dt2, by = "x", all = TRUE))
#Unit: seconds
