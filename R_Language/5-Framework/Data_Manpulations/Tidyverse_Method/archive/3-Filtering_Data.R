#Intro


#Intro
#=====
library(tidyverse) #install and load the tidyverse package

name <- c("vyvan","vedha","venu","nitya","vinay","veera","sandeep","arun",'saraswati','monica','rocky')
gender <- c("M", "F", "M", "F", "M", "M", "M", "Not disclosed", "M", "F", "M")
age <- c(29,67,40,23,26,34,55,42,18,73,18)
weight <- c(52,65,80,57,71,90,67,78,85,50,85)
height <- c(165,171,183,154,173,167,169,180,190,145,190)
maristatus <- c(TRUE,FALSE,FALSE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE)
dob <- as.Date(c("1988-01-20","1983-01-22","1983-03-18","1978-01-11","1968-01-14","1999-03-24","1988-03-22","1955-01-19","1986-03-21","1968-04-26","1987-02-23"))
math <- c(52,55,83,22,50,51,15,30,32,42,48)
science <- c(23,52,71,58,90,25,66,39,88,76,70)
history <- c(30,NA,35,NA,33,40,66," ",22,NA,66)
english <- c(65,26,34,75,72,89,74,58,57,71,52)
region <- c("north","north","north","south","south","south","east","east","east","west","west")
#sample(10:99, 11)
health <- tibble(name,gender,age, weight, height,maristatus,dob,math,science,history,english,region) #tibble create the dataframe
health

#view the data in data grid
view(health)
# get object class and type
class(health) 
typeof(health)
# get the data frame structure
str(health)
# get data frame dimensions
dim(health)
nrow(health)
ncol(health)

#Basic Row Filtering (Single Condition)
##Use filter() to keep rows that satisfy a condition.
health %>%filter(age>25) #Keeps only rows where age > 25.

#Multiple Conditions (AND)
##Use & for all conditions must be true.
health %>% filter(age > 25 & gender == "F") #Female and older than 25.

#Multiple Conditions (OR)
##Use | for any condition can be true.
health %>% filter(age < 20 | age > 35) #Keeps teenagers OR people above 35.

#Filtering Using Character Matching
##Exact match
health %>% filter(gender == "M")
##Multiple values using %in%
health %>% filter(gender %in% c("M", "F"))
##Pattern match with stringr
library(stringr)
health %>% filter(str_detect(gender, "M"))

#Filtering Missing and Non-Missing Values
health %>% filter(is.na(history))       # Only missing
health %>% filter(!is.na(history))      # Only non-missing
health %>% filter(is.null(history))      # it does not catch the null

#Range Filtering
health %>% filter(between(age, 20, 35)) #Keeps rows where age is between 20 and 35 (inclusive).

df_dates <- tibble(
  id = 1:5,
  visit_date = as.Date(c("2024-01-01","2024-02-10","2024-03-05","2024-04-01","2024-05-20"))
)

#Filtering Dates
health %>% filter(dob >= as.Date("1980-03-01"))

#Conditional Filtering Using if_any() and if_all()
##Any name above 80 : if_any() Keeps a row if the condition is true in at least one of the selected columns.
health %>% filter(if_any(c(math, history), ~ .x > 80))
###traditional way 
health[health$math > 80 | health$history > 80, ]
subset(health, math > 80 | history > 80) #using subset function
##All name above 60 :if_all() Keeps a row only if the condition is true in every single one of the selected columns.
health %>% filter(if_all(c(math,english), ~ .x > 50))
## ~.x syntax is shorthand for creating an anonymous function (also known as a lambda function)
## ~(The Tilde): This tells R, "What follows is a function I'm defining on the fly."
## .x(The Placeholder): This represents the individual columns you listed in c(math, science).

#Group-wise Filtering (Top / Min / Max per Group)
# Keep maximum age of the as per student group
#library(tidyverse)
#library(MASS)
#library(dplyr)
health %>% 
  group_by(gender) %>%
  filter(age == max(age)) %>%
  select(gender,age,name)  

#Filtering with slice_*() Helpers
##the slice() family of functions is used to select rows based on their integer position
health %>% slice_max(age, n = 1)
health %>% slice_min(age, n = 1)
##Filtering Using Row Numbers
health %>% filter(row_number() <= 3)     # First 3 rows
health %>% filter(row_number() %% 2 == 0)  # Even rows : observer the row number compared to health dataset
##Filtering with Dynamic Column Names (Programming)
col_name <- "math"
health %>% filter(.data[[col_name]] > 25)

#Filtering Based on Computed Conditions
##You can filter using expressions, not just raw columns.
health %>% filter(age - 5 > 20)

#Filtering Using Aggregates (Without Explicit group_by)
##Keeps rows above the overall average age
health %>% filter(age > mean(age))

#Filtering by First / Last Within Groups
health %>%
  group_by(gender) %>%
  filter(row_number() == 1)      # First row per group

health %>%
  group_by(gender) %>%
  filter(row_number() == n())    # Last row per group

#Filtering by Rank / Dense Rank
health %>%
  group_by(region) %>%
  filter(row_number() == 1)      # First row per group

health %>%
  group_by(region) %>%
  filter(row_number() == n())    # Last row per group


#Quiz
#====

#Assignment
#==========
#1)Filter iris for petal length less than 1.6
#2)Filter iris for sepal length greater than 5.0 and sepal width greater than 3.0
#3)Filter iris for petal width being either 0.2, 0.3 or 1.4, and species is virginica

#Resources:
#=========
#https://dplyr.tidyverse.org/reference/filter.html
#https://www.statmethods.net/management/userfunctions.html
#https://jangorecki.gitlab.io/data.cube/library/data.table/html/duplicated.html
#https://www.datasciencemadesimple.com/remove-duplicate-rows-r-using-dplyr-distinct-function/
#https://www.datasciencemadesimple.com/filter-subsetting-rows-r-using-dplyr/
#https://statisticsglobe.com/r-is-null-function/
