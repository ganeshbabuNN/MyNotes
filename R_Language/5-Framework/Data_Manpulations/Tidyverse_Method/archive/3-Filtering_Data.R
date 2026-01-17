#Intro 
####################--Basic Learning --------####################
#Basic Row Filtering (Single Condition)
#Multiple Conditions (AND)
#Multiple Conditions (OR)
#Filtering Using Character Matching
#Filtering Missing and Non-Missing Values
#Range Filtering
#Filtering Dates
####################--Advance Learning --------####################
#Conditional Filtering Using if_any() and if_all()
#Group-wise Filtering (Top/Min/Max per Group)
#Filtering with slice_*() Helpers
#Filtering Using Row Numbers
#Filtering with Dynamic Column Names (Programming)
#Filtering Based on Computed Conditions
#Filtering Using Aggregates (Without Explicit group_by)
#Filtering by First / Last Within Groups
#Filtering by Rank/Dense Rank
#Filtering Using Window Functions##TBD
#Conditional Filtering Using case_when()
#Filtering Using Multiple Columns at Once (Row-wise Logic)
#Filtering on Count of Conditions Met
#Filtering with Nested Data
##Filtering Based on Frequency (Rare/CommonValues)
#Filtering Using Regular Expressions
#Filtering on Multiple Date Windows
#Conditional Group Exclusion
#Filtering Using Lead/Lag for Change Detection
#Filtering Using coalesce() for Fallback Logic
#filtering Using near() for Floating Point Comparisons
#Filtering Using cur_data()(legacy) (Inside Groups)
#Filtering with across() + Column Name Patterns
#Filtering with External Lookup Tables- hear we are not using the filters
#Filtering Using Joins (Relational Filtering)
#Filtering Rows That Are Duplicates
#Filtering for Outliers (IQR Method)


#Intro
#=====
library(tidyverse) #install and load the tidyverse package

name <- c("vyvan","vedha","venu","nitya","vinay","veera","sandeep","arun",'saraswati','monica','rocky')
gender <- c("M", "F", "M", "F", "M", "M", "M", "Not disclosed", "M", "F", "M")
age <- c(73,35,30,23,30,35,40,42,18,75,18)
weight <- c(52,65,80,57,71,90,67,78,85,50,85)
height <- c(165,171,183,154,173,167,169,180,190,145,190)
maristatus <- c(TRUE,FALSE,FALSE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE)
dob <- as.Date(c("1988-01-20","1983-01-22","1983-03-18","1978-01-11","1968-01-14","1999-03-24","1988-03-22","1955-01-19","1986-03-21","1968-04-26","1987-02-23"))
math <- c(52,55,83,22,50,51,15,30,32,42,48)
science <- c(23,52,71,58,90,25,66,39,88,76,70)
history <- c(30,NA,35,NA,33,40,66," ",22,NA,66)
english <- c(65,26,34,75,72,89,74,58,57,71,52)
score_survey <- c(3.8,6,1.5,1.4,1.4,8,2.2,9.23,3.2,9.5,10.2)
fed_survey1 <- c(55,75,13,56,99,62,89,34,25,81,79)
fed_survey2 <- c(51,60,23,47,85,58,97,39,14,16,38)
region <- c("north","north","north","south","south","south","east","east","east","west","west")
#sample(10:99, 11)
#round(runif(11, 1.1, 10.9),2) #only for decimal use runif
health <- tibble(name,gender,age, weight, height,maristatus,dob,math,science,history,english,score_survey,fed_survey1,fed_survey2,region) #tibble create the dataframe


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
#max
health %>% 
  group_by(gender) %>%
  filter(age == max(age)) %>%select(gender,age,name)  
##min
health %>% 
  group_by(gender) %>%
  filter(age == min(age)) %>%
  select(gender,age,name)  

#Filtering with slice_*() Helpers
##the slice() family of functions is used to select rows based on their integer position
health %>% slice_max(age, n = 1)
health %>% slice_min(age, n = 1)
#slice other methods
health %>% slice(2L) #similar to head()
health %>% slice(n()) #similar to tail()
health %>% slice(5:n()) #last 5 rows similar to tail()
health %>% slice(-(1:4)) #Rows can be dropped with negative indices i,e the first 4 rows are dropped
health %>% slice_head(n=5) #first obs - First and last rows based on existing order
health %>% slice_tail(n=5) #last obs - First and last rows based on existing order
health %>% slice_min(age,n=5) # min 5 record rows- Rows with minimum and maximum values of a variable
health %>% slice_max(age,n=5) # max 5 record rows- Rows with minimum and maximum values of a variable
health %>% slice_sample(n=5) #slice_sample() allows you to random select with or without replacement


#Filtering Using Row Numbers
health %>% filter(row_number() <= 3)     # First 3 rows
health %>% filter(row_number() %% 2 == 0)  # Even rows : observer the row number compared to health dataset

#Filtering with Dynamic Column Names (Programming)
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
  group_by(region) %>%
  filter(row_number() == 1) %>%    # First row per group
  select(region,name,gender)

health %>%
  group_by(region) %>%
  filter(row_number() == n()) %>%    # Last row per group
  select(region,name,gender)

#Filtering by Rank/Dense Rank
ht<-health %>%
      mutate(
        rank_gap = min_rank(desc(height)),          # 1st place is tallest
        rank_dense = dense_rank(desc(height)))      # No gaps in ranking
ht
##min_rank()(Standard Ranking)-This is the "Olympic" style of ranking. If two people tie for 1st place, they both get 1, 
##and the next person gets 3rd place. There is a gap because the 2nd position was "used up" by the tie.
##Behavior: Skips numbers after a tie. Result for c(10, 10, 20): 1,1,3
  ht %>%  
    filter(rank_gap < 2)
  
##dense_rank() (Continuous Ranking):This creates a "dense" sequence with no gaps. If two people tie for 1st place, they both get 1, but the next person still gets 2nd place.
##Behavior: Never skips numbers. Result for c(10, 10, 20):1,1,2
  ht %>%  
    filter(rank_dense <=2)

#Filtering Using Window Functions##TBD
##Keeps rows where age increased compared to previous row.
health %>% filter(age > lag(age, default = 0)) 
##Keeps only new maximum values over time.
health %>% filter(age == cummax(age))

#Conditional Filtering Using case_when()
health %>%
  filter(
    case_when(
      gender == "F" ~ age > 50,
      gender == "M" ~ age > 70,
      TRUE ~ FALSE
    )
  )

#Filtering Using Multiple Columns at Once (Row-wise Logic)
##Keep rows where row sum > 80
health %>% filter(rowSums(across(math:science)) > 150)

#Filtering on Count of Conditions Met -~.x > 50 is a formula that checks if the value in each cell is greater than 50
health %>% filter(rowSums(across(math:science,~.x > 80))>=1)

#Filtering with Nested Data
nested <- tibble(
  group = c("A","B"),
  data = list(
    tibble(x = c(1,5,10)),
    tibble(x = c(2,3))
  )
)

nested$group
nested$data[2]
nested$data[1] #This "maps" a function over every element in the data column and ensures the result is a logical value (TRUE or FAL
nested %>%filter(map_lgl(data, ~ any(.x$x > 8)))

##Filtering Based on Frequency (Rare / Common Values)
health %>%
  add_count(age) %>%
  filter(n >=2) #Keeps only frequent categories

#Filtering Using Regular Expressions
health %>% filter(str_detect(name, "^v"))     # Starts with A
health %>% filter(str_detect(name, "dha$"))   # Ends with dha

#Filtering on Multiple Date Windows
health %>% filter(dob == min(dob, na.rm = TRUE)) #min of that
health %>% filter(dob == max(dob, na.rm = TRUE)) #max of that
health %>%
  filter(
    dob >= as.Date("1955-01-01") &
      dob <= as.Date("1980-01-12")
  )

#Conditional Group Exclusion
##any()|logic:OR 
##Returns TRUE if...:There is at least one TRUE.
##Returns FALSE if :All values are FALSE.
health %>%
  group_by(region) %>%
  filter(!any(age < 20)) #Removes entire groups if any row violates condition
          ##c(FALSE,FALSE,FALSE)_north
          ##c(FALSE,FALSE,FALSE)_south
          ##c(FALSE,FALSE,TRUE)_east
          ##c(FALSE,TRUE)_west
##all()|logic:AND -Every single value is TRUE.There is at least one FALSE.
##Returns TRUE if...:Every single value is TRUE.
##Returns FALSE if :There is at least one FALSE.
health %>%
  group_by(region) %>%
  filter(!all(age < 40)) %>% 
  select(name,gender,age,region) #Removes entire groups if any row violates condition
        ##c(FALSE,TRUE,TRUE)_north
        ##c(TRUE,TRUE,TRUE)_south
        ##c(FALSE,FALSE,TRUE)_east
        ##c(FALSE,FALSE)_west

#Filtering Using Lead/Lag for Change Detection
health %>% filter(age != lag(age))  #Keeps rows where value changed from previous record.
##Experiment A:see how the entire east and west or dropped
ht<-health %>%
    group_by(region) %>%
    filter(!any(age < 20)) %>% 
    select(region,name,gender,age)
##Experiment B:See how it only keeps the row where Alex turned 26.
ht %>%
  group_by(region) %>%
  filter(age != lag(age))%>% 
  select(region,name,gender,age)
##lets check whats happening internally
health %>%
  group_by(region) %>%
  mutate(
    previous_age = lag(age),
    did_age_change = (age != lag(age))
  ) %>%  filter(!any(age < 20)) %>% select(region,name,gender,age,previous_age,did_age_change)
##similarly for lead

#Filtering Using coalesce() for Fallback Logic
health %>% filter(coalesce(as.integer(history), 0) > 60) #Treats missing values/Blank string/NA as 0 before filtering.

#filtering Using near() for Floating Point Comparisons
## near() health %>% filter(near(score_survey, 9.2))
health %>% filter(near(score_survey, 9.2))
health %>% filter(near(score_survey, 8.0)) #this goes with precision but in data it is 8.0

#Filtering Using cur_data()(legacy) (Inside Groups)
##everything() grabs every single column 
##The pick() function is a tool that grabs a subset of columns from your current data. It treats those columns like a mini-data frame that you can pass into other functions. its just faster
health %>% group_by(region) %>%
            filter(nrow(pick(everything())) <= 2)
##explore pick() function

#Filtering with across() + Column Name Patterns
health %>% filter(if_any(starts_with("fed"),~.x>90))

#Filtering with External Lookup Tables- hear we are not using the filters
valid_age <- tibble(age = c(35,48,35))
health %>% semi_join(valid_ids, by = "age")

#Filtering Using Joins (Relational Filtering)
health1 <- tibble(
        name=c("vedha","arun","monica","tyagu"),
        age=c(35,42,75,54),
        fed_surey=c(56,32,88,76)
)
##Keep only matching rows (semi_join)
health1 %>% semi_join(health, by = "name") #semi_join(x, y): Keeps all rows in x that have a match in y.
##Remove matching rows (anti_join)
health1 %>% anti_join(health, by = "name") #anti_join(x, y): Keeps all rows in x that do NOT have a match in y.

#Filtering Rows That Are Duplicates
##duplicated() function is a tool used to identify repeated values in a vector or repeated rows in a data frame
health %>% filter(duplicated(age))
health %>% filter(!duplicated(age))

#Filtering for Outliers (IQR Method)
#This code is the standard mathematical way to detect outliers (extreme values) using the Interquartile Range (IQR) Method
Q1 <- quantile(health$age, 0.25)
Q1
Q3 <- quantile(health$age, 0.75)
Q3
IQR_val <- IQR(health$age)
IQR_val

health %>% filter(age < Q1 - 1.5 * IQR_val | age > Q3 + 1.5 * IQR_val)


#Quiz
#====
#Single condition-filter(col > 10)
#Multiple (AND)-&
#Multiple (OR)- '	`
#In list-%in%()
#Missing values-is.na()
#Ranges-between()
#Pattern match-str_detect()
#Group logic-group_by() + filter()
#Any / All columns-if_any(), if_all()
#Top / Bottom	slice_max(), slice_min()
#Dynamic-column	.data[[col]]
#Aggregate filters-Above mean, thresholds
#Group filters-Top N, first/last
#Window filters-Changes, trends
#Relational filters-semi_join, anti_join
#Row-wise logic-Multiple column conditions
#requency filters-Rare vs common
#Regex filters-Pattern-based
#Temporal filters-Time windows
#Validation filters-Duplicates, mismatches
#Outlier filters-Statistical detection

#Assignment
#==========
AE<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")
DM<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/dm.csv")
VS<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/vs.csv")
EX<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ex.csv")
LB<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/lb.csv")

#AE
#---
##Ongoing AEs at Database Lock 
##Treatment-Emergent AEs Using Study Day Only 
##Serious OR Fatal AEs
##AEs Leading to Discontinuation
#AEs of Special Interest (AESI)
#First AE per Subject
#Subjects with ≥ 3 AEs
#AEs with Date Logic Errors
#Severity-Based Filtering
#Dose-Related AEs
#Treatment-Emergent by Study Day Window
#Late-Onset AEs
#Recurrent Events (Same Term Reappears)
#Events with Missing Severity but Serious
#AEs with Concomitant Action Required
#Long-Duration AEs
#Fatal or Life-Threatening Only
#AEs Missing Start Date
#Multiple Serious AEs in Same SOC
#AEs with Partial Dates (Imputation Candidates)


#LB DOMAIN (Laboratory)
#-----------------------
#Baseline Labs Only
#Post-Baseline Labs Only
#Out-of-Range Values
#High-Risk Subjects (≥2 Abnormal Results)
#Worst Value per Subject
#Change Over Time (Increasing Trend)
#Last Value per Subject
#Labs with Missing Units
#Clinically Significant Abnormal (CS Flag) -TBD
#Subjects with No Post-Baseline Labs
#Lab Values Decreasing Over Time
#Extreme Lab Values (Top 1%)
#Inconsistent Units for Same Test
#Subjects with Lab Value Crossing Threshold
#Last Non-Missing Lab per Subject
#Subjects with ≥3 High Values of Same Test


#VS DOMAIN (Vitals)
-------------------
#Hypertension Screening
#Subjects with Multiple High BP Readings
#Abnormal HR Values
#Hypotension Detection
#Clinically Significant Change from Baseline -TBD
#Vitals Measured Outside Clinic Hours -TBD

#EX DOMAIN (Exposure)
#--------------------
#Subjects with Dose Changes
#Missed Doses
#High-Dose Administration
#Subjects with ≥5 Doses
#Exposure Duration > 30 Days
#First Dose Only
#Last Dose Only
#Dose Escalation
#Dose Reduction
#Gaps in Dosing
#Exposure Without Dose


#DM DOMAIN (Demographics)
#-------------------------
#Screen Failures
#Subjects Who Discontinued
#Elderly Population
#Pediatric Population
#Missing Key Demographics
#Early Termination
#Completed Subjects
#Subjects with Missing Reference Dates
#Subjects Outside Age Range
#Duplicate Subjects
#Subjects with Partial Dates


#SV DOMAIN (Subject Visits)
#--------------------------
#Unscheduled Visits
#Missed Visits
#Visits Outside Visit Window
#First Visit Only
#Last Visit Only
#Subjects with ≥2 Unscheduled Visits -TBD
#Visits with Missing Visit Name


#CM DOMAIN (Concomitant Medications)
#------------------------------------
#Prohibited Medications
#Ongoing Medications at Study End
#Medications with High Dose
#Medications Started After Baseline (Using Study Day)
#Chronic Medications (Long Duration)
#Polypharmacy (≥5 Medications)
#Medications Missing Indication

#DS (Disposition)
----------------
#Early Withdrawal 
#Screen Failure Only
#Protocol Violation as Reason

#Resources:
#=========
#https://dplyr.tidyverse.org/reference/filter.html
#https://www.statmethods.net/management/userfunctions.html
#https://jangorecki.gitlab.io/data.cube/library/data.table/html/duplicated.html
#https://www.datasciencemadesimple.com/remove-duplicate-rows-r-using-dplyr-distinct-function/
#https://www.datasciencemadesimple.com/filter-subsetting-rows-r-using-dplyr/
#https://statisticsglobe.com/r-is-null-function