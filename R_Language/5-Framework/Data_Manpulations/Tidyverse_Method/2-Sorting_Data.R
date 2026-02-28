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
flights %>%
  group_by(carrier) %>%
  arrange(desc(arr_delay), .by_group = TRUE) %>% select(carrier,arr_delay,everything())

#Top N Rows Per Group (Very Common in Industry)
#=====================
#Instead of full sorting, use
#Top 3 Delays per Carrier
flights %>% 
  group_by(carrier) %>%
  slice_max(arr_delay, n = 3) 


#Top 3 Least Delayed / Most Early per carrier
flights %>% 
  group_by(carrier) %>%
  slice_min(arr_delay, n = 3)

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


#Quiz
#====
  
#Assignment
#==========

#Resources:
#=========
#https://dplyr.tidyverse.org/reference/arrange.html

                                                        