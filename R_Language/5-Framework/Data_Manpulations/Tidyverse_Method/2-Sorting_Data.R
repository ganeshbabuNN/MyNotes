#Syntax
#Basic Sorting with arrange()
#Sorting by Multiple Columns
#Handling Missing Values
#Sorting After Filtering
#Sorting Within Groups
#Top N Rows Per Group
#Sorting After Summarise
#Sorting Character Columns
#Sorting by Date & Time 
#Custom Sorting Logic
#Ranking Functions
#Quiz
#Assignment
#Resources

#Syntax
#=======
#In dplyr, sorting is done using:
arrange()

#Basic Sorting with arrange()
#===========================
##Sort by One Column (Ascending – Default)
flights %>%arrange(dep_delay)
#Sort in Descending Order
flights %>%arrange(desc(dep_delay))


#Sorting by Multiple Columns
#===========================
#Real-world scenario: Sort by delay, then distance.
flights %>% arrange(desc(dep_delay), desc(distance))
#

#Handling Missing Values (NA Sorting)
#====================================
#By default:  NA values go to the end
flights %>%arrange(arr_delay) 
#get the last rows
flights %>%arrange(arr_delay) %>% tail()
#Explanation:
##is.na(arr_delay) returns TRUE/FALSE
##FALSE comes before TRUE

#Sorting with mutate() (Derived Columns)
#=======================================
#Often you sort based on calculated metrics.
#Example: Delay per mile
flights %>%
  mutate(delay_per_mile = arr_delay / distance) %>%
  arrange(desc(delay_per_mile))

#Sorting After Filtering
#=======================
#Top delayed flights from JFK
flights %>%
  filter(origin == "JFK") %>%
  arrange(desc(arr_delay))

#Sorting Within Groups (Important Concept)
#=========================================
#arrange() ignores grouping unless .by_group = TRUE
#Example Without .by_group ,This sorts entire dataset — not within each carrier.
flights %>%
  group_by(carrier) %>%
  arrange(desc(arr_delay))

#Correct Way: Sort Within Group
#Now sorted inside each airline
flights %>%
  group_by(carrier) %>%
  arrange(desc(arr_delay), .by_group = TRUE) %>% select(carrier,arr_delay,everything())

#Top N Rows Per Group (Very Common in Industry)
#=====================
#Instead of full sorting, use slice_max(),slice_min()
#Top 3 Delays per Carrier
flights %>% 
  group_by(carrier) %>%
  slice_max(arr_delay, n = 3) 


#Top 3 Least Delayed / Most Early per carrier
flights %>% 
  group_by(carrier) %>%
  slice_min(arr_delay, n = 3)
  
#2nd highest of carrier per arr_delay
flights |> 
  group_by(carrier) |> 
  slice_max(arr_delay,n=2) |> 
  slice_tail(n=1) |> 
  select(carrier,arr_delay) 

#Sorting After Summarise
#=======================
#Ex: Ranking airlines by average delay.
flights %>% 
  group_by(carrier) %>%
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE)) %>%
  arrange(desc(avg_delay))

#if you want to see additional columns
##If you just want to see any example of the date associated with that carrier, use first(). 
##This keeps the columns without breaking the summary.
flights %>% 
  group_by(carrier) %>%
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE),
            year=first(year),
            month=first(month),
            day=first(day),
            dep_time=first(day),
            arr_time=first(day)) %>%
  arrange(desc(avg_delay)) 

#Sorting Character Columns
#=========================
flights %>%
  arrange(tailnum)

#Sorting by Date & Time
#======================
#Flights dataset has:
##year
##month
##day
##dep_time

flights %>%
  arrange(year, month, day, dep_time) #Proper date-time order

#Custom Sorting Logic
#====================
#Sort by:
#On-time flights first
#Then delayed flights
flights %>%
  arrange(arr_delay > 0) %>% select(carrier,flight,arr_delay)
#Logical sorting
##FALSE (on-time) first

#Ranking Functions (Used with Sorting)
#=====================================
#c(10,20,20,40)
#row_number() - (1,2,3,4)-No ties allowed. It just counts rows
#min_rank()  - (1,2,2,4(skip3)) -Ties get the same rank; it skips numbers after.
#dense_rank() -(1,2,2,3(never skip3)) -Ties get the same rank; it never skips numbers.
#percent_rank() -0, 0.33, 0.33, -Scales the rank from 0 to 1.

#Example: Rank Flights by Delay
flights %>%
  mutate(delay_rank = min_rank(desc(arr_delay))) %>%
  arrange(delay_rank)

#demo of above rank functions
x <- c(10, 20, 20, 40,60)
tibble(
  value = x,
  row_num = row_number(x),
  min = min_rank(x),
  dense = dense_rank(x),
  percent = percent_rank(x)
)

#Real-World Analysis Pattern
##Which airline had the worst average delay each month?  
flights %>%
  group_by(month, carrier) %>%
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE)) %>%
  arrange(month, desc(avg_delay)) %>%
  group_by(month) %>%
  slice_max(avg_delay, n = 1)
##Grouped sorting
##Ranking
##Business-ready output

#Quiz
#====

#Assignment
#==========
#Basic Sorting Assignments
#1.Sort AE dataset by subject (USUBJID) and AE start date (AESTDTC).
#2.Sort VS dataset by subject and visit (VISITNUM).
#3.Sort LB dataset by test name (LBTEST) alphabetically.
#4.Sort CM dataset by medication start date (CMSTDTC).
#5.Sort EX dataset by treatment start date (EXSTDTC) descending.
#Descending Sorting Assignments
#6.Sort AE dataset by severity (AESEV) with highest severity first.
#7.Sort VS dataset by systolic blood pressure (VSSTRESN) descending.
#8.Sort LB dataset by lab result (LBSTRESN) descending.
#9.Sort CM dataset by medication dose (CMDOSTOT) descending.
#10.Sort EX dataset by dose amount (EXDOSE) descending.
#Multi-Column Sorting
#11.Sort AE dataset by:USUBJID AESTDTC
#12.Sort VS dataset by:USUBJID VISITNUM VSTEST
#13.Sort LB dataset by:LBTEST LBSTRESN descending
#14.Sort CM dataset by:USUBJID CMSTDTC CMENDTC
#15.Sort SV dataset by:USUBJID VISITNUM
#Sorting with Missing Values
#16.Sort AE dataset so that missing AEENDTC appears last.
#17.Sort LB dataset by LBSTRESN, placing missing values first.
#18.Sort VS dataset by VSSTRESN while keeping NA values at the end.
#19.Sort CM dataset by CMENDTC, pushing missing values last.
#20.Sort EX dataset by EXENDTC handling NA properly.
#Sorting with group_by()
#21.Within each subject, sort AE records by AESTDTC.
#22.Within each subject, sort VS records by visit number.
#23.Within each subject, sort LB records by test date.
#24.Within each subject, sort CM records by medication start date.
#25.Within each subject, sort EX records by exposure start date.
#Top Records per Subject
#26.Find the most severe AE per subject.
#27.Find the highest blood pressure per subject in VS.
#28.Find the highest lab result per subject in LB.
#29.Find the latest medication per subject in CM.
#30.Find the latest exposure record per subject in EX.
#Earliest Records per Subject
#31.Find the first AE event per subject.
#32.Find the baseline vital sign record per subject.
#33.Find the first lab test per subject.
#34.Find the first medication per subject.
#35.Find the first exposure record per subject.
#Sorting After Summary
#36.Calculate number of AE events per subject and sort descending.
#37.Calculate average lab value per test and sort descending.
#38.Calculate total drug exposure per subject and sort descending.
#39.Count number of visits per subject and sort descending.
#40.Count number of medications per subject and rank subjects.
#Advanced Real-World Tasks
#41.Find top 10 subjects with highest number of AE events.
#42.Find top 5 highest lab values across all subjects.
#43.Find subjects with longest medication duration.
#44.Sort AE events so that: Fatal events first,Severe events next,Mild events last
#45.Sort VS records so that:
#Screening visits first: Baseline next,Follow-up visits last
#46.Find subjects with earliest treatment start date.
#47.Sort LB records by abnormal flag (LBNRIND) with abnormal results first.
#48.Sort CM dataset so that ongoing medications appear first.
#49.Find top 3 highest systolic BP per subject.
#50.Sort AE dataset by: Serious AE first (AESER == "Y"),Then by severity Then by start date

#Resources:
#=========
#https://dplyr.tidyverse.org/reference/arrange.html

                                                        