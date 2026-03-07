#filtering with single condition
#filtering with multiple condition
#filtering rows using their positions
#Filtering with Multiple Complex Conditions
#Filtering using Comparison Operators
#Filtering Missing Values
#Filtering Using Range
#Filtering with Dynamic Column Names
#filtering the unique rows
#Filtering Using Aggregates
#Filtering Using Windows functions
#filtering using case_when()
#Filtering Using near()
#Filtering with String Conditions
#Filtering with multi-column
#Filtering with Grouped data
#Filtering After Joining
#Filtering Top N Values
#Filtering with Date-Time Logic
#Filtering Rows Based on Another Table 
#Filtering Using Cumulative Logic
#Filtering by Frequency
#Practical Business Scenarios

library(dplyr)
library(nycflights13)
#======
#Syntax
#======
#flitering or subsetting
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

#Long Delays (> 2 hours)
flights %>%
  filter(arr_delay > 120)

#character matching
#Single value
flights %>% filter(carrier=="AS")

#multiple value
flights %>% filter(carrier %in% c("UA", "AA"))

#Calculated Expressions (Inline Computation)
##Flights with speed > 500 mph
flights %>% mutate(speed= (distance / air_time) * 60) |> filter(speed > 500)

#filtering rows using their positions
#====================================
#slice(): Selects rows by their specific integer positions
flights |> slice(1,2) #Extract index by rows and col
#flights |> slice(:,4) 
flights |> slice(1:4) #ranging

#slice_head():Grabs the very first $n$ rows or percentage of rows from the dataset
flights |> slice_head(n=4)

#slice_tail(): Grabs the very last $n$ rows or percentage of rows from the dataset.
flights |> slice_tail(n=4)

#slice_min(): Picks rows with the lowest values in a specific column (e.g., the flights with the shortest air_time).
flights |> slice_min(distance, n = 1)
flights |> slice_min(distance, n = 5) |> select(carrier,flight,distance)  |> distinct(distance) #top 3 minium value

#slice_max():Picks rows with the highest values in a specific column
flights |> slice_max(distance, n = 7) |> select(carrier,flight,distance) |> distinct(distance)


#slice_sample():Randomly selects a specified number or fraction of rows from the dataset for quick inspection
##This is essential for Bootstrapping(a statistical technique used to estimate the precision of sample statistics)
flights |> slice_sample( n = 7) #n=Fixed Number prop=Relative Percentage
flights |> slice_sample( prop = 0.05)
flights |> slice_sample( n = 7,replace=TRUE) #FALSE = Dealing cards from a deck, TRUE:Rolling a die.
flights |> filter(!is.na(air_time)) |> slice_sample(n = 5, weight_by = air_time) |> select(carrier,flight,air_time)
#here weight_by: Pick 10 flights at random, but give the flights that were in the air the longest a much better chance of winning

#Filtering with Multiple Complex Conditions
#==========================================
#Flights delayed but not cancelled
flights %>%
  filter(arr_delay > 0 & !is.na(arr_delay))

#Example: Extreme delays in winter
flights %>%
  filter(month %in% c(12, 1, 2), arr_delay > 180) 

#across() find flights where the "Total Operational Time" exceeded a certain threshold.
flights %>% 
  filter(rowSums(across(c(air_time, dep_delay, arr_delay)), na.rm = TRUE) > 500)

#find flights where either the departure delay OR the arrival delay was greater than 80 minutes,
flights |> filter(rowSums(across(c(dep_delay,arr_delay),~.x>80),na.rm = TRUE)>=1) |> 
  select(carrier,dep_delay,arr_delay)

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

#Boolean Operators
# AND = Both conditions must be true.
##Only flights that occurred on New Year's Day.
flights |> filter(month == 1 & day == 1)

#The OR Operator (|)
##You get all flights from January plus all flights from November
flights |> filter(month == 1 | month == 11)

#NOT (!): Inverts the logic.
#Flights that were not delayed by more than 2 hours: 
flights |> filter(!(arr_delay > 120))

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

#Filtering out canceled flights effectively:
flights %>% filter(is.na(dep_time) & is.na(arr_time)) |> select(carrier,dep_time,arr_time)
#remove the NA rows itself, running flights
flights %>% drop_na(dep_time, arr_time)|> select(carrier,dep_time,arr_time)

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
##summarize() Collapses the data. You get one row per group.
##filter() Keeps the data detailed. You get every original flight belonging to that group.

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

#filtering the unique rows
#=========================
flights |> distinct(carrier)
flights |> distinct(origin,dest) #A list of every unique flight path-To get unique combinations (e.g., every unique route).
flights |> distinct(carrier,.keep_all = TRUE) #.keep_all=To keep all other columns for the first unique row found:
flights |> summarize(unique_planes = n_distinct(tailnum))

#Base R way
unique(flights[,'carrier'])

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
  filter(sum(distance) > 1000000) |> select(year,month,day,distance) 

#Filtering by Proportion (mean of a logical)
#Find airports where more than 5% of their flights were cancelled.
# Remember: is.na(dep_time) is TRUE (1) or FALSE (0)
# The mean of a logical is the percentage/proportion.
flights %>%
  group_by(origin) %>%
  filter(mean(is.na(round(dep_time,2)) > 0.05))

colSums(is.na(flights))
flights %>%
  summarise(across(everything(), ~ mean(is.na(.x))))

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
##Assgn : Top 5 delays per month using min_rank() ?

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
weather |> filter(near(temp, 32))
weather |> filter(near(humid ,44))

#Filtering with String Conditions
#================================
#Flights by American Airlines (AA)
flights %>%
  filter(carrier == "AA")

#Flights from JFK
flights %>%
  filter(origin == "JFK")

#Find all flights to airports starting with "S":
flights %>% 
  filter(str_detect(dest, "^S"))

#Find flights to Florida (destinations often start with "M" for Miami/Orlando or "T" for Tampa):
flights %>% 
  filter(str_detect(dest, "MIA|MCO|TPA"))

#Filtering with multi-column
#===========================
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

#if_all() – Filter if ALL columns meet condition(AND (All must be true))
flights %>%
  filter(if_all(c(dep_delay, arr_delay), ~ . > 100)) |> select(carrier,dep_delay,arr_delay)

#if_else() -- similar like ifelse() -OR (At least one must be true)
flights %>%
  mutate(status = if_else(
    condition = arr_delay > 60, 
    true      = "Very Late", 
    false     = "Acceptable",
    missing   = "Cancelled/Unknown"  # Explicitly handle NAs
  )) %>% select(flight,carrier,year,month,day,dep_time,arr_time,status)

##Filtering with Grouped data(Very Important in Real Analysis)
#============================
#Filtering inside groups is powerful.

#Example: Worst arrival delay per month
flights %>%
  group_by(month) %>%
  filter(arr_delay == max(arr_delay, na.rm = TRUE)) #Returns worst delay within each month.

#Example: Above Average Delay per Carrier
flights %>%
  group_by(carrier) %>%
  filter(arr_delay > mean(arr_delay, na.rm = TRUE)) #Keeps only flights performing worse than carrier average.

#n_groups()-counts how many piles you have made.
#you want to know how many different airlines (carrier) are in the flights dataset.
flights |> group_by(carrier) |> n_groups()

#n()- Counts rows inside each group.
flights |> group_by(carrier,origin) |> summarise(num_of_flights_per_orgin=n())
flights |> group_by(dest) |> summarise(num_of_dest = n())

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
airports %>%
  filter(tzone %in% "America/Chicago")

flights %>%
  semi_join(ca_airports, by = c("dest" = "faa"))

#Filtering Using Cumulative Logic
#===============================
## how many flights it takes to reach a certain amount of delay time in a day.Find flights that contributed to the first 1000 minutes of delay at JFK 
f_cum <- flights %>% select(origin,month,day,dep_delay) |> 
  filter(origin == "JFK", !is.na(dep_delay)) %>%
  group_by(month, day) %>% arrange(month,day,(dep_delay)) |> 
  mutate(running_delay = cumsum(dep_delay)) %>%
  filter(running_delay <= 1000)
  
  
flights %>% se
  group_by(carrier) %>%
  filter(cumsum(arr_delay > 120) >= 1)
  
#Filtering by Frequency
#======================
flights |> add_count(dest)

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


#Quiz
#====
  
#Assignment
#==========
#DM (Demographics) – Filtering Assignments
#-----------------------------------------
#1.Filter male subjects only. 
#2.Filter subjects older than 65 years.
#3.Filter subjects belonging to STUDYID "ABC123".
#4 Filter subjects randomized to Treatment Arm A.
#5 Filter subjects from USA and Canada only. Use %in%.
#AE (Adverse Events)
#------------------
#6 Filter serious adverse events.
#7 Filter severe adverse events.
#8 Filter treatment related adverse events.
#9 Filter AEs that started after first dose date.
#10 Filter AEs ongoing at end of study.
#11 Filter AEs occurring in first 30 days after treatment.
#12 Filter subjects having more than 3 adverse events. Use group_by() + filter(n() > 3).
#VS (Vital Signs)
#---------------
#13 Filter high systolic blood pressure (>140).
#14 Filter low heart rate (<50 bpm).
#15 Filter vital signs collected during screening visit.
#16 Filter abnormal vital signs results.
#17 Filter subjects with increasing blood pressure compared to previous visit. Use lag().
#18 Filter subjects who received study drug.
#19Filter missed doses.
#20 Filter exposures before adverse event start date.
#21 Filter subjects who received more than 10 doses. Use group_by(USUBJID).
#22 Filter highest dose per subject. Use max(EXDOSE).
#LB (Laboratory)
#---------------
#23 Filter abnormal lab results.
#24 Filter ALT values greater than 3× upper normal limit.
#25 Filter lab tests collected after treatment start.
#26 Filter highest lab value per subject. Use slice_max().
#27 Filter lab values missing results.
#CM (Concomitant Medication)
#---------------------------
#28 Filter medications related to hypertension.
#29 Filter medications started before study drug.
#30 Filter ongoing medications.
#31 Filter subjects taking more than 5 medications. Use group_by(USUBJID).
#SV (Subject Visits)
#-------------------
#32 Filter screening visits only.
#33 Filter unscheduled visits.
#34 Filter visits occurring after Day 30.
#35 Filter subjects who missed visits.
#36 Filter subjects who discontinued study.
#37 Filter subjects who completed study.
#38 Filter discontinuation due to adverse event.
#39 Filter subjects withdrawn due to lack of efficacy.
#40 Filter subjects discontinued within first 60 days. Use between() or date calculation.
#Advanced Cross-Domain Assignments
#-----------------------------------
#These mimic real clinical analysis queries.
#41 Find subjects with severe adverse events who received high dose drug.Join AE + EX.
#42 Find subjects with abnormal lab results after treatment start.Join LB + EX.
#43 Find subjects with hypertension medication and high blood pressure. Join CM + VS.
#44 Find subjects discontinued due to adverse events.Join DS + AE.
#45 Find subjects with more than 2 serious adverse events and discontinued study. Join AE + DS.

#Resources:
#=========
#https://dplyr.tidyverse.org/reference/arrange.html

                                                        