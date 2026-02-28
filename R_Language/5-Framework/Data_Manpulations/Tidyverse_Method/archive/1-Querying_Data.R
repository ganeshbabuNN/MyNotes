#Intro
####################--Basic Learning --------####################
#Select All Columns
#Select Specific Columns
#Select Using Column Ranges by Name
#Drop/exclue column
#Reorder Columns -Changes column order.
#Select by Position
#Select with Logical Vectors
####################--Advance Learning --------####################
#Rename While Selecting
#Helper Functions (Very Important)
#Select with Negation + Helpers
#Combine Multiple Select Rules
#Reorder Using everything()
#select Numeric/character column
#Select Columns by Multiple Conditions-using numeric and logical col
#exclude by type-character
#Select Columns That Satisfy a Function
#Tidyselect with any_of() and all_of()
#Remove Duplicated Column Names
#Select Last / First Columns
#Real-World Example

#Intro
#=====
#-Generally in any data manipulations data frame is must frequently used data structure in R.
#-A data frame is a two-dimensional array-like structure or a table in which a column contains values of one variable, and rows contains one set of values from each column
#-A data frame is used to store data table and the vectors which are present in the form of a list in a data frame, are of equal length

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

##view the data in data grid
view(health)
##get object class and type
class(health) 
typeof(health)
##get the data frame structure
str(health)
##get data frame dimensions
dim(health)
nrow(health)
ncol(health)

#Select All Columns
health #by just putting the dataframe
##using the pipe operator -- going further we shall use this method.
health %>% select(everything())

#Select Specific Columns
health %>% select(name,gender)

#Select Using Column Ranges by Name
health %>% select(age:dob)

#Drop/exclue column
health %>% select(-age) #for one variable
health %>% select(c(-age,-height)) #for 2+ variable

#Reorder Columns -Changes column order.
health %>% select(name,age,gender,maristatus,dob,height,weight)

#Select by Position
health %>% select(1,3) #individual index
health %>% select(2:4) #range

#Select with Logical Vectors
health %>% select(which(c(TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE))) #which() converts logical → numeric indices.

#Rename While Selecting
health %>% select(employee=name,sex=gender)  #new_name=old_name(existing column name)

#Helper Functions (Very Important)
##starts_with()
health %>% select(starts_with("we")) 
## ends_with()
health %>% select(ends_with("ht")) 
##contains()
health %>% select(contains("ge"))
##matches() (regex)
health %>% select(matches("^.*t$")) ###pattern ^-start of the string, .*any characeter,t is a letter $end of the string
health %>% select(matches("^(w|h).*t$"))
health %>% select(matches("weight|Height",ignore.case = FALSE)) #case senstive matchinhg
health %>% select(matches("weight|Height",ignore.case = TRUE)) #case insenstive matchinhg

#Select with Negation + Helpers
health %>% select(-starts_with("we"))
health %>% select(-contains("we"))

#Combine Multiple Select Rules
health %>% select(name,starts_with("we"),ends_with("ht"))

#Reorder Using everything()
health %>%  select(dob,everything()) #first name column and then everything

#select Numeric/character column
health %>% select(where(is.numeric))
health %>% select(where(is.character))
health %>% select(where(is.numeric),everything()) #pull all character columns and then other
#Select Columns by Multiple Conditions                 
health %>% select(where(is.numeric),where(is.logical))
health %>% select(where(is.character),where(is.logical))
#exclude by type
health %>% select(-where(is.character))

#Select Columns That Satisfy a Function 
health %>% select(where(~ mean(.x, na.rm = TRUE) > 50)) #Keeps columns whose mean is > 50.

#Tidyselect with any_of() and all_of()
##all_of() Select all specified columns — and ERROR if any are missing,Works only if all three columns exist,If even one column is missing, you get an error
##any_of() Select only the columns that exist — silently ignore missing ones,Output contains only the columns that exist No error is thrown
cols <- c("name","age","emp_status")
health %>% select(all_of(cols))   # must exist
health %>% select(any_of(cols))   # this is called safer version Because it does not break your pipeline when columns are missing.
##Use all_of() when:
###Columns are mandatory
###You want the code to fail fast
###You are doing QC or validation
##Use any_of() when:
###Columns are optional
###Datasets may differ across studies/vendors
###You want robust, reusable pipelines
###You want to avoid runtime errors

#Remove Duplicated Column Names
health %>% select(!duplicated(names(.))) #no example

#Select Last / First Columns
health %>% select(last_col())
health %>% select(last_col(2))

#Real-World Example
health %>%
  select(
    employee = name,
    region,
    starts_with("score"),
    -age
  )


#Quiz
#====
#1.how do you Select by name?
#2.how do you drop?
#3.how do you Rename?
#4.how do you select Pattern?
#5.how to Start / End with a some character?
#6.how to do select By type?
#7.how do select From vector?
#8.how do you Reorder?
#9.how do you select Range?
#10.how do you select Safe?
#11.how do you select Last cols?


#Assignment
#==========
#Given the below datasets
AE<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")
DM<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/dm.csv")
VS<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/vs.csv")
EX<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ex.csv")
LB<-readr::read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/master/clinical_datasets/sdtm/daibetes/csv/lb.csv")
SV<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/sv.csv")
CM<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/cm.csv")
DS<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ds.csv")

#if the above URL does not work... test if the URL is reachable 
url <- "https://raw.githubusercontent.com/ganeshbabuNN/datasets/master/clinical_datasets/sdtm/daibetes/csv/lb.csv"
readLines(url, n = 5)
#If you still get an error (Corporate proxy / SSL)
LB <- readr::read_csv(curl::curl(url))
LB <- readr::read_csv(
  url,
  locale = readr::locale(encoding = "UTF-8")
)

#Select Core Identifiers from Any Domain
#Select All AE Variables from AE 
#Select All Date Variables
#Select Only Weight and Height from VS
##By test name pattern
#Select All Result Columns from LB 'LBOR','LBST'
#Select All Result Columns from LB 'DY','DTC'
#Select All Character Columns (Metadata Review)
#Select All Numeric Result Variables
#Select All Variables for Exposure (EX)
#Select All Timing Variables i,e DTC,DY
#Select All Qualifiers in a Domain ,Only AE-specific columns
#Reorder: Put Keys First STUDYID, DOMAIN, USUBJID, AESEQ
#Select All "Standardized" Variables like LBSTRESC,LBSTRESN,LBSTRESU
#Select All Test Codes like VSTESTCD,VSTEST
#Select All Numeric Measurements + Subject ID
#Select Variables Using Regex (Advanced) using RES,RESN,RESC
#Programmatic SDTM Selection putting a vector c("USUBJID", "AETERM", "AEDECOD", "AESTDTC", "AEENDTC")
#Select Only Domain-Specific Columns
#Typical SDTM Validation Check 
##Are all date variables present?
##Are all sequence variables present?
##Are all date variables present?
##Are all sequence variables present?

#Resources:
#=========
#https://dplyr.tidyverse.org/reference/select.html
