# #Intro and type of join
# #Merging the dataframe
# #Merge rows 
# Merge more than two dataframes
# Appending Rows and columns
# 
# intro
# =====
# -In R Language, dataframes are generic data objects which are used to store the tabular data. Dataframes are considered to be the most popular 
# data objects in R programming because it is more comfortable to analyze the data in the tabular form
# -In R we use merge() function to merge two dataframes in R. This function is present inside join() function of dplyr package. The most important condition for joining two dataframes is that the column type should be the same on which the merging happens
# 
# Sytnax:
# 	merge(df1, df2, by.df1, by.df2, all.df1, all.df2, sort = TRUE)
# 
# Parameters:
# df1: one dataframe
# df2: another dataframe
# by.df1, by.df2: The names of the columns that are common to both df1 and df2.
# all, all.df1, all.df2: Logical values that actually specify the type of merging happens
# 
# -Dataframes can also be taught as mattresses where each column of a matrix can be of the different data types. Dataframe is made up of three principal components, the data, rows, and columns
# 1)Natural Join or Inner Join
# 2)Left Outer Join
# 3)Right Outer Join
# 4)Full Outer Join
# 5)Cross Join
# 6)Semi Join
# 7)Anti Join

#Joins explanations
-------------------
#Mutating Joins (Adding Columns)- These are the most common. They combine variables from both tables.
##inner_join(),Keeps only rows that match in both tables.
##left_join(),"Keeps all rows from x, and adds data from y where it exists.
##right_join(),"Keeps all rows from y, and adds data from x where it exists.
##full_join(),"Keeps every row from both tables, filling gaps with NA.
  
#Filtering Joins (Keeping/Dropping Rows)- These don't add new columns from the second table; they just use the second table as a filter.
##semi_join(x, y): Keeps all rows in x that have a match in y.
##anti_join(x, y): Keeps all rows in x that do NOT have a match in y.
  
#Key Differences at a Glance
##inner vs full: Inner is exclusive (matches only); Full is inclusive (everyone invited).
##left vs semi: Left join adds new columns from the second table; Semi join just keeps the original columns but filters the rows

# Refer inner_join.jpg
# 
# Merging the dataframe
# =====================
# -In the applied setting, data are hosted on different servers and exist in many different files. 
# -When the data you need come from multiple sources, it's essential to know how to aggregate them so that you lose as little information as possible and make pairings that actually make sense given the structure of your data
# -We can merge two data frames in R by using the merge() function or by using family of  join() function in dplyr package. 
# -The data frames must have same column names on which the merging happens. Merge() Function in R is similar to database join operation in SQL.
# -The different arguments to merge() allow you to perform natural joins i.e. inner join, left join, right join,cross join, semi join, anti join and full outer join. 
# 
# df1 = data.frame(
#   StudentId = c(101:106),
#   Product = c(
#     "Hindi",
#     "English",
#     "Maths",
#     "Science",
#     "Political Science",
#     "Physics"
#   )
# )
# df1 
# 
# 
# df2 = data.frame(
#   StudentId = c(102, 104, 106,
#                 107, 108),
#   State = c("Manglore", "Mysore",
#             "Pune", "Dehradun", "Delhi")
# )
# df2 
# 
# Natural Join or Inner Join
# --------------------------
# -Inner join is used to keep only those rows that are matched from the dataframes, in this, we actually specify the argument all = FALSE
# -If we try to understand this using set theory then we can say here we are actually performing the intersection operation
# 
# inner_join(df1,df2, by = c("StudentId"="id name")) #assume if the there different key
# df <- inner_join(df1,df2,by="StudentId")
# 
# #using forward operator
# df= df1 %>% inner_join(df2,by="StudentId")
# df
# 
# Left Outer Join
# ---------------
# -Left Outer Join is basically to include all the rows of your dataframe x and only those from y that match, in this, we actually specify the argument x = TRUE.
# -If we try to understand this using a basic set theory then we can say here we are actually displaying complete set x.
# 
# ##load the dplyr package
# library(dplyr)
# library(magrittr)
# 
# ##Simple Two-Table Join (Base Pattern)
# df <- left_join(df1,df2,by="StudentId") #for single variable have same key.
# df <- left_join(df1,df2,by="StudentId",id name") #more then one key.
# df <- left_join(df1,df2,by=c("StudentId"="id name")) #for different key 
# df <- left_join(df1,df2,by=c("x1"="a1","y1=b1")) #for multiple key
# 
# ##Mimicking SAS “BY” Merge Behavior (Sorted by Keys)
# EC <- EC %>% arrange(STUDYID, USUBJID)
# DM <- DM %>% arrange(STUDYID, USUBJID)
# merged <- EC %>%
#   left_join(DM, by = c("STUDYID", "USUBJID"))
# 
# ##If Some Datasets Have Different Join Keys
# datasets <- list(
#   EC = EC,
#   DM = DM,
#   SUPPEC = SUPPEC
# )
# join_keys <- list(
#   EC = c("STUDYID", "USUBJID"),
#   DM = c("STUDYID", "USUBJID"),
#   SUPPEC = c("STUDYID", "USUBJID", "ECLNKID")
# )
# #Merge with custom keys
# merged <- Reduce(function(x, y_name) {
#   y <- datasets[[y_name]]
#   by_vars <- intersect(names(x), names(y))
#   left_join(x, y, by = by_vars)
# }, names(datasets)[-1], init = datasets[[1]])
# 
# ##Multiple Joins Step-by-Step
# merged <- EC %>%
#   left_join(DM,     by = c("STUDYID", "USUBJID")) %>%
#   left_join(SUPPEC, by = c("STUDYID", "USUBJID")) %>%
#   left_join(AE,     by = c("STUDYID", "USUBJID"))
# 
# ##Left Join Dynamically (Many Datasets at Once) ,If you have many datasets stored in a list (e.g. 10+ domains):
# library(purrr)
# # Example list of datasets,This automatically left-joins all datasets one after another
# datasets <- list(EC = EC, DM = DM, SUPPEC = SUPPEC, AE = AE)
# # Common join keys
# join_keys <- c("STUDYID", "USUBJID")
# # Reduce with left_join
# merged <- reduce(datasets, left_join, by = join_keys)
# 
# ##forward pip operator
# df= df1 %>% left_join(df2,by="StudentId")
# df
# 
# ##if you want to know how many rows didn’t match (like SAS IN= flags):
# merged <- EC %>%
#   left_join(DM, by = c("STUDYID", "USUBJID"), keep = TRUE) %>%
#   mutate(match_flag = ifelse(!is.na(DM$USUBJID), "Matched", "Unmatched"))
# 
# 
# Right Outer Join
# ----------------
# -Right, Outer Join is basically to include all the rows of your dataframe y and only those from x that match, in this, we actually specify the argument y = TRUE.
# -If we try to understand this using a basic set theory then we can say here we are actually displaying a complete set y. 
# 
# df <- right_join(df1,df2,by="StudentId") #for common key
# df <- right_join(df1,df2,by=c("StudentId"="id name"))  #for multiple key
# 
# #forward pip operator
# df= df1 %>% right_join(df2,by="StudentId")
# df
# 
# 
# Full Outer Join
# ---------------
# -Outer Join is basically used to keep all rows from both dataframes, in this, we actually specify the arguments all = TRUE.
# -If we try to understand this using a basic set theory then we can say here we are actually performing the union option
# 
# df <- full_join(df1,df2,by="StudentId")
# df <- full_join(df1,df2,by=c("StudentId"="id name")) #for multiple key
# 
# #forward pip operator
# df= df1 %>% full_join(df2,by="StudentId")
# df
# 
# Cross Join
# ----------
# -A Cross Join also known as cartesian join results in every row of one dataframe is being joined to every other row of another dataframe.
# - In set theory, this type of joins is known as the cartesian product between two sets. Now let us try to understand this using R program
# 
# NA
# 
# Semi Join
# ---------
# This join is somewhat like inner join, with only the left dataframe columns and values are selected. 
# 
# df <- semi_join(df1,df2,by="StudentId")
# 
# #forward pip operator
# df = df1 %>% semi_join(df2, by = "StudentId")
# df
# 
# Anti Join
# *--------*
# -In terms of set theory, we can say anti-join as set difference operation, 
# -for example, A = (1, 2, 3, 4) B = (2, 3, 5) then the output of A-B will be set (1, 4). 
# -This join is somewhat like df1 – df2, as it basically selects all rows from df1 that are actually not present in df2.
# 
# dplyr
# *----*
# library(dplyr)
# df <- anti_join(df1,df2,by="StudentId")
# df <- anti_join(df1,df2,by=c("StudentId"="id name")) #for multiple keys
# df = df1 %>% anti_join(df2, by = "StudentId")
# df
# 
# Appending Rows and columns
# ==========================
# TBD
# 
# Merge rows names
# ================
# -You can also merge data frames by row names.
# 
# #base R
# df1 <- data.frame(var=c("one","Two","three","four","five"),data=c(1,5,1,6,8))
# rownames(df1) <- c("A", "B", "C", "D", "E")
# df1
# 
# df2 <- data.frame(var = c("three", "one", "eight", "two", "nine"), data = c(1, 5, 1, 6, 8))
# rownames(df2) <- c("E", "A", "B", "D", "C")
# df2
# 
# merge(df1, df2, by = 0, all = TRUE) 
# merge(df1, df2, by = "row.names", all = TRUE) # Equivalent
# 
# Merge more than two dataframes
# ==============================
# It is worth to mention that you can iteratively merge data frames in R, concatenating the merge function
# 
# #You can merge the three data frames merging two and then merging the output with the remaining data set
# merge(x, merge(y, z))
# 
# #Note that you can specify the arguments you prefer for each join and that you can concatenate as many merges as you need
# merge(x, merge(y, z, all = TRUE), all = TRUE)
# 
# #A cleaner alternative is to use the Reduce function as follows, so instead of concatenating the merge functions, you can specify all the data frames inside a list
# Reduce(function(x, y) merge(x, y), list(x, y, z))
# 
# Quiz
# ====
# 
# Assignment
# ==========
# 
# 
# Resources:
# =========
# https://www.geeksforgeeks.org/joining-of-dataframes-in-r-programming/
# https://r-coder.com/merge-r/
# https://www.datasciencemadesimple.com/join-in-r-merge-in-r/
# https://hollyemblem.medium.com/joining-data-with-dplyr-in-r-874698eb8898
# https://www.programmingr.com/examples/r-dataframe/rbind-in-r-row-bind/
# https://www.datacamp.com/community/tutorials/merging-datasets-r?
# 
