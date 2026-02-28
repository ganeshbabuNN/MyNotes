#syntax
#Select the datasets
#Select one or more columns by name
#Select Columns by Position
#Excluding Columns
#Selecting All Except Some
#Renaming Columns While Selecting
#Helper Functions
#Selecting by Data Type
#Selection Using Character Vectors (Dynamic Selection)
#Combining Selection Rules
#Reordering Columns
#Selection Inside a Pipe
#relocate() (Modern Way to Move Columns)
#convert to column to vector
#Tidyselect with External Vector
#Select inside Other Verbs
#Select inside Other Verbs
#Select Distinct Columns
#Select After Join
#Selecting Columns Programmatically
#Real-World Analysis Pattern
#Quiz
#Assignment
#Resources

#syntax
#======
select()

#Select the datasets
#===================
flights #by just putting the dataframe

#Select one or more columns by name
#===================
#select a single column
flights %>%  select(year)

#select a two column
flights %>%  select(year,carrier)

#Select Specific Columns
flights %>% select(year,carrier,origin,dest)


#Select Columns by Position
#==========================
#Select Using Column Ranges by Name
flights %>% select(year:day) 
#Select by Position index
flights %>% select(1,10,11,13,14)  #individual index
#Selecting Column Ranges
##Using :
flights %>% select(10:14) #range
flights %>% select(1,10:14) #combing individual and range

#Excluding Columns
#==================
#Drop/exclude column
##Using -
flights %>% select(-year) #for one variable

#Selecting All Except Some
#==========================
#Keep all except specific columns
flights %>% select(-year, -month)  #for 2+ variable

#Exclude a range
flights %>% select(-(year:day))

#Renaming Columns While Selecting
#===============================
#Rename While Selecting
flights %>% select(dep_year = year,
                   dep_month = month,
                   dep_day = day)  #new_name=old_name(existing column name) 
##select() drops other columns
##rename() keeps all columns

#Helper Functions
#=================
#Select columns starting with a pattern - starts_with
flights %>% select(starts_with("dep")) 
# Select columns ending with a pattern- ends_with()
flights %>% select(ends_with("delay"))
#Select columns containing text- contains()
flights %>% select(contains("time"))
#Select columns matching a regex- matches()- use regular expression here.
flights %>%select(matches("^arr"))
flights %>%select(matches("delay|time"))
flights %>%select(matches("DELAY|TIME",ignore.case = TRUE))
flights %>%select(matches("DELAY|TIME",ignore.case = FALSE)) #case senstive matchinhg
flights %>% select(matches("^.*t$")) ###pattern ^-start of the string, .*any characeter,t is a letter $end of the string
#last_col()
##last column of the table.
flights %>%  select(last_col()) #The very last column.
flights %>%  select(last_col(offset = 1)) #The second to last column 

#Selecting by Data Type
#======================
#Using where()
#Select numeric columns
flights %>% select(where(is.numeric))
flights %>% select(where(is.numeric),everything()) #pull all numeric columns first and then other
#Select character columns
flights %>% select(where(is.character))
#Select factor columns
flights %>% select(where(is.factor))
#Select logical columns
flights %>% select(where(is.logical))
#Select Columns by Multiple Conditions                 
flights %>% select(where(is.numeric),where(is.character))
#exclude by type
flights %>% select(-where(is.numeric)) 
#Select with Logical Vectors
flights %>% select(which(c(TRUE,TRUE,FALSE,FALSE,TRUE,FALSE,FALSE)))  #which() converts logical → numeric indices. 
#Custom condition
flights %>% select(where(~ is.numeric(.) && mean(., na.rm = TRUE) > 100))

#Selection Using Character Vectors (Dynamic Selection)
#=====================================================
#Tidyselect with any_of() and all_of()
#When column names come from variables
#all_of() -Every column name in your vector must exist in the dataset
cols <- c("carrier","year","month","day","loc") #loc col is not there in this datasets
flights %>% select(all_of(cols))  
#Optional columns (won't error if missing)
#any_of() -It selects only the columns that actually exist
flights %>% select(any_of(cols))   # this is called safer version Because it does not break your pipeline when columns are missing.

#Combining Selection Rules
#=========================
#Mix names + helpers
select(iris, Species, starts_with("Sep"))

#Mix exclusion + helpers
flights %>% select(-starts_with("time"))
flights %>% select(-ends_with("time"))
flights %>% select(-contains("time"))

#Combine Multiple Select Rules
flights %>% select(starts_with("dep"), ends_with("delay"))

#Reordering Columns
#=================
#Reorder Columns -Changes column order.
flights %>% select(year,carrier,flight,origin,dest)  #my own order if you want
#Move selected columns to the front
##everything()- Reorder columns
flights %>%  select(year,carrier,origin,dest,everything()) #first fix the ordered column you want then display everthing.
#Move selected columns to the end
flights %>%  select(-year,year)

#Selection Inside a Pipe
#=======================
flights %>% select(year, carrier, flight, origin, dest) %>% head()

#relocate() (Modern Way to Move Columns)
#=======================================
#In modern dplyr (1.0.0+), relocate() is the preferred tool for changing column order without having to name every column
flights %>% relocate(carrier)
### Move all character columns (carrier, tailnum, origin, dest) to the front
flights %>% relocate(where(is.character))
#Using .before and .after
##This is where the power of relocate() really shines. You can place columns relative to other columns rather than using index numbers.
## Move 'origin' and 'dest' to be right after 'year'
flights %>% relocate(origin, dest, .after = year)
# Move 'distance' to be right before 'air_time'
flights %>% relocate(distance, .before = air_time)
# Move all columns that contain the word "delay" to the front
flights %>% relocate(contains("delay"))
# Move all numeric columns to the end
flights %>% relocate(where(is.numeric), .after = last_col())
#Differect from select() and relocat(), 
#Primary Goal-->Choosing which columns to keep-->Changing the order of columns.
#Handling others-->Drops columns not mentioned (unless using everything())-->Keeps all columns automatically.
#Ease of use-->Can be tedious for large datasets-->Very fast for moving "this next to that."

#Convert to column to vector
#===========================
#extracts a single column and turns it into a vector.
pull() 
# This gives you a numeric vector, not a table
air_times <- flights %>%pull(air_time)
air_times
mean(air_times, na.rm = TRUE)
#The "Negative" Pull (Positioning)
# Pulls the last column (time_hour)
flights %>% pull(last_col())
# Pulls the first column (year)
flights %>% pull(1)
## this can be used for plotting and pass this vector to statistical functions like mean(),quantile(),..

#Tidyselect with External Vector
#===============================
delay_cols <- names(flights)[grep("delay", names(flights))]
delay_cols
flights %>%
  select(all_of(delay_cols))

#Select inside Other Verbs
#=========================
#Inside mutate(across())
flights %>%
  mutate(across(ends_with("delay"), ~ . / 60))

#Inside summarise(across())
flights %>%
  summarise(across(where(is.numeric), mean, na.rm = TRUE))

#Select Distinct Columns
#=======================
#Using distinct() for column-based uniqueness:
flights %>%
  distinct(origin)

#Multiple columns:
flights %>%
  distinct(origin, dest)

#Select After Join (Real Analysis Scenario)
#==========================================
#get the name of the airlines along with dep_delay and arr_delay
flights %>%
  left_join(airlines, by = "carrier") %>%
  select(carrier, name, dep_delay, arr_delay)

#Selecting Columns Programmatically(Advanced)
#============================================
select_delay_columns <- function(data) {
  data %>%
    select(contains("delay"))
}

#Real-World Analysis Pattern
#===========================
#Typical Data Science Workflow
#Select relevant columns
#Then filter
#Then sort
flights %>%
  select(year, month, day, carrier, origin, dest,
         dep_delay, arr_delay) %>%
  filter(dep_delay > 60) %>%
  arrange(desc(dep_delay))

#Quiz
#====

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
