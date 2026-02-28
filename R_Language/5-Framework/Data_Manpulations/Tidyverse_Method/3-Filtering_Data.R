



#Syntax
#======
filter(.data, condition1, condition2, ...)

#filtering with single condition
#===============================
#Example 1: Filter flights in January
jan_flights <- flights %>%
  filter(month == 1)
#Returns only January flights.

#filtering with mulitple condition
#=================================
#Example 2: Multiple Conditions (AND logic)
flights %>%
  filter(month == 1, day == 1) #numeirc matching

#Example 3: OR Condition
flights %>%
  filter(month == 6 | month == 7 | month == 8) #numeirc matching

#same equivalent
summer_flights <- flights %>%
  filter(month %in% c(6, 7, 8))

#Long Delays (> 2 hours)
flights %>%
  filter(arr_delay > 120)

#character matching
#Single value
flights %>% filter(carrier=="AS")

#multiple value
flights %>% filter(carrier %in% c("UA", "AA"))

#Filtering with Multiple Complex Conditions
#==========================================
#Flights delayed but not cancelled
flights %>%
  filter(arr_delay > 0 & !is.na(arr_delay))

#Example: Extreme delays in winter
flights %>%
  filter(month %in% c(12, 1, 2), arr_delay > 180) 

#Filtering using Comparison Operators
#==================================
#Equal To (==)
#Find all flights that flew to Miami ("MIA").
flights %>% 
  filter(dest == "MIA")

#Not Equal To (!=)
#Find all flights that did not depart from Newark ("EWR").
flights %>% 
  filter(origin != "EWR")

#Greater Than (>) and Greater Than or Equal To (>=)
#Find flights that were delayed by more than 2 hours (120 minutes)
flights %>% 
  filter(dep_delay > 120)

#Less Than (<) and Less Than or Equal To (<=)
#Find flights that departed strictly before 6:00 AM.
flights %>% 
  filter(dep_time < 600)

#The "In Group" Operator (%in%)
#Find flights operated by United (UA), American (AA), or Delta (DL).
flights %>% 
  filter(carrier %in% c("UA", "AA", "DL"))

#Filtering Missing Values (Very Important in Real Data)
#======================================================

#Handling NA values
#-------------------
#Find all flights that which are cancelled (dep_time=='NA')
flights %>% filter(dep_time == NA) #This does NOT work
#Correct Way
flights %>% filter(is.na(dep_time))

#Keep only the flights that actually have a departure delay recorded
flights %>%
  filter(!is.na(dep_delay))

#Different technique
#-------------------
##different way to find missing values
##1.The "Quick Check" (Base R) -# Count NAs for every column
colSums(is.na(flights))
##To see only the columns that have at least one missing value:
## Filter out the zeros
missing_counts <- colSums(is.na(flights))
missing_counts[missing_counts > 0]

##2.The dplyr Way
##Using summarise() and across() gives you a clean tibble output, which is great for reports or further piping.
flights %>%
  summarise(across(everything(), ~ sum(is.na(.x)))) %>% glimpse()

##3.The data.table Way
#For large datasets, data.table is significantly faster. It uses .SD (Subset of Data) to apply the check to every column.
library(data.table)
flights_dt <- as.data.table(flights)
## Fast count of NAs per column
flights_dt[, lapply(.SD, function(x) sum(is.na(x)))]

#4.Visualizing Missingness (The "Pro" Choice)
## install.packages("naniar")
library(naniar)
## A quick bar chart of missing values per variable
gg_miss_var(flights)

#Filtering Using Range
#=====================
#Using the between()
filter(flights, between(month, 6, 8))
filter(flights,month >= 6 & month <= 8) #equivalent of above

#Filtering with Dynamic Column Names (Programming)
#===================================
#.method
col_name <- "distance"
flights %>% filter(.data[[col_name]] > 1000) 

#Filtering Using Aggregates
#==========================
#Filtering by Average (mean)
#Find all flights that belong to a carrier whose average departure delay is greater than 20 minutes
flights %>%
  group_by(carrier) %>%
  filter(mean(dep_delay, na.rm = TRUE) > 20)

#Filtering by Count (n)
#Only look at airports (dest) that have a high volume of traffic (more than 10,000 flights per year).
flights %>%
  group_by(dest) %>%
  filter(n() > 10000)

#Filtering by Rank or Extreme
#Find the "First Flight of the Day" for every single carrier.
flights %>%
  group_by(carrier, year, month, day) %>%
  filter(dep_time == min(dep_time, na.rm = TRUE))

#Filtering by Sum (sum)
flights %>%
  group_by(year, month, day) %>%
  filter(sum(distance) > 1000000)

#Filtering by Proportion (mean of a logical)
#Find airports where more than 5% of their flights were cancelled.
# Remember: is.na(dep_time) is TRUE (1) or FALSE (0)
# The mean of a logical is the percentage/proportion.
flights %>%
  group_by(origin) %>%
  filter(mean(is.na(round(dep_time,2)) > 0.05))

colSums(is.na(flights))
flights %>%
  summarise(across(everything(), ~ mean(is.na(.x)))) %>% glimpse()

flights %>%
  group_by(origin) %>%
  mutate(m_dep=mean(is.na(round(dep_time,2)))) %>% 
  summarise(across(everything(), ~ mean(is.na(.x)))) %>% select(origin,dep_time)


#Filtering Using Windows functions
#=================================
#c(10,20,20,40)
#row_number() - (1,2,3,4)-No ties allowed. It just counts rows
#min_rank()  - (1,2,2,4(skip3)) -Ties get the same rank; it skips numbers after.
#dense_rank() -(1,2,2,3(never skip3)) -Ties get the same rank; it never skips numbers.
#percent_rank() -0, 0.33, 0.33, -Scales the rank from 0 to 1.

#row_number() (The "No Ties" Rank)
##Find the single most delayed flight for each carrier
##If 5 flights all have the exact same record-breaking delay, you will get all 5 rows.
flights %>%
  group_by(carrier) %>%
  filter(row_number(desc(arr_delay)) == 1)

#min_rank() (The "Competition" Rank)
##Find the flights tied for the top 3 longest delays per origin airport.
##If 5 flights all have the exact same record-breaking delay, you will get all 5 rows
flights %>%
  group_by(origin) %>%
  filter(min_rank(desc(arr_delay)) <= 3)

#dense_rank() (The "No Gaps" Rank)
##Find flights in the top 2 "delay brackets" per day.
##This is useful when you care about the distinct values of delays rather than the number of flights.
flights %>%
  group_by(year, month, day) %>%
  filter(dense_rank(desc(arr_delay)) <= 2)

#percent_rank() (The "Percentage" Rank)
##Find only the "Nightmare Flights"—those in the worst 1% of delays.
##It ignores the total count of rows and focuses on the relative position.
flights %>%
  filter(percent_rank(arr_delay) >= 0.99)


#filtering using case_when()
#=============================
#case_when()
##Categorizing Delay Severity
flights_classified <- flights %>%
  select(carrier, flight, arr_delay) %>%
  mutate(delay_status = case_when(
    arr_delay < 0   ~ "Early",
    arr_delay == 0  ~ "On Time",
    arr_delay <= 30 ~ "Small Delay",
    arr_delay <= 60 ~ "Late",
    arr_delay > 60  ~ "Very Late",
    TRUE            ~ "Cancelled/Unknown"  # This is the "else" or "default"
  ))

##Grouping Airports into Regions
flights %>%
  select(origin, dest) %>%
  mutate(region = case_when(
    dest %in% c("MIA", "FLL", "TPA", "MCO") ~ "Florida",
    dest %in% c("ORD", "MDW", "DTW")        ~ "Midwest",
    dest %in% c("LAX", "SFO", "SEA")        ~ "West Coast",
    TRUE                                    ~ "Other"
  ))

#Filtering Using near() (Floating Point Comparison)
#==================================================
#Useful when comparing decimal numbers.
filter(weather, near(temp, 32))

#Filtering with String Conditions
#================================
#Flights by American Airlines (AA)
flights %>%
  filter(carrier == "AA")

#Flights from JFK
flights %>%
  filter(origin == "JFK")

#Filtering with Helper Functions
#===============================
#if_any() – Filter if ANY selected columns meet condition
flights %>%
  filter(if_all(c(dep_delay, arr_delay), ~ . > 60))
#Step 1: The Input (flights %>%)
##The process starts with the flights tibble. It contains 336,776 rows and 19 columns.
#Step 2: The Scope (if_all(c(dep_delay, arr_delay), ... ))
##The if_all() function tells R to look at a specific subset of columns.
##Instead of checking every column, it focuses only on dep_delay and arr_delay.
##The "all" part of if_all acts like a logical AND. It means the row only stays if the condition is true for every column listed in the vector.
#Step 3: The Condition (~ . > 60)
##This is a lambda (formula) function:
##The ~ starts the formula.
##The . (dot) is a placeholder for "the current column value."
##It checks if the value is strictly greater than 60

#if_all() – Filter if ALL columns meet condition
flights %>%
  filter(if_all(c(dep_delay, arr_delay), ~ . > 60))

#if_else() -- similar like ifelse()
flights %>%
  mutate(status = if_else(
    condition = arr_delay > 60, 
    true      = "Very Late", 
    false     = "Acceptable",
    missing   = "Cancelled/Unknown"  # Explicitly handle NAs
  )) %>% select(flight,carrier,year,month,day,dep_time,arr_time,status)

#Grouped Filtering (Very Important in Real Analysis)
#===================================================
#Filtering inside groups is powerful.

#Example: Worst arrival delay per month
flights %>%
  group_by(month) %>%
  filter(arr_delay == max(arr_delay, na.rm = TRUE)) #Returns worst delay within each month.

#Example: Above Average Delay per Carrier
above_avg <- flights %>%
  group_by(carrier) %>%
  filter(arr_delay > mean(arr_delay, na.rm = TRUE)) #Keeps only flights performing worse than carrier average.

#Filtering After Joining (Real World Scenario)
#=============================================
#Suppose we want airline names.
flights %>%
  left_join(airlines, by = "carrier") %>%
  filter(name == "Delta Air Lines Inc.")

#Filtering Top N Values
#======================
#Instead of filter(), use:
flights %>%
  slice_max(arr_delay, n = 10)

#Filtering with Date-Time Logic
#==============================
flights %>%
  filter(dep_time >= 2200 | dep_time <= 500)

#Filtering Rows Based on Another Table (Semi Join Concept)
#=========================================================
#Flights going to airports in California:
ca_airports <- airports %>%
  filter(tzone %in% "America/Chicago")

flights_to_ca <- flights %>%
  semi_join(ca_airports, by = c("dest" = "faa"))
flights_to_ca

#Using filter() with Window Functions
#====================================
#Example: Top 3 longest flights per carrier
flights %>%
  group_by(carrier) %>%
  arrange(desc(distance)) %>%
  slice_head(n = 3)

#Practical Business Scenarios
#============================
#Scenario 1: Flights delayed more than 30 mins in summer from JFK
flights %>%
  filter(origin == "JFK",
         month %in% 6:8,
         arr_delay > 30)
#Scenario 2: Flights cancelled due to weather
weather_delays <- flights %>%
  filter(is.na(dep_time) & !is.na(weather$precip))

#Comparison: filter() vs summarise()
#===================================
#summarize() Collapses the data. You get one row per group.
#filter() Keeps the data detailed. You get every original flight belonging to that group.

#Quiz
#====
  
#Assignment
#==========

#Resources:
#=========
#https://dplyr.tidyverse.org/reference/arrange.html

                                                        