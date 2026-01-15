####################################################################################################
###
### Program:      derive_orres_vs_vsstresn 
### Programmer:   Ganesh Babu G
### Date Created: 15JAN2026
###
### Input:        
###
### Ouput:        
###               
###
### Purpose:      
###
### Comment:      Demostration the lead and lag function using 
###
### Software:     Higher + 
###               RStudio 2025.09.1 Builder401
###               R version 4.5.1
###               tidyverse 2.0.0
###               tidyquant 1.0.11
###
### Modification: 
###
### Date        Programmer      Description
### ----        ----------      -----------
### 15JAN2026   Ganesh Babu     initiated
###
#######################################################################################################
# 1. Install and load the package
install.packages("tidyquant")
library(tidyquant)

# 2. Download the data
# Replace "AAPL" with your desired ticker
stock_data <- tq_get("INFY", 
                     get = "stock.prices", 
                     from = "2026-01-01", 
                     #to = "2026-01-15"
                     )

stock_data_TCS <- tq_get("TCS.NS", 
                     get = "stock.prices", 
                     from = "2025-01-01", 
                     #to = "2026-01-15"
)

stock_data
stock_data_TCS
# 3. View the first few rows
head(stock_data)
head(stock_data_TCS)

#lead and lag
##Use lag() when you want to look at the past. This is the most common use case in data science (e.g., "How much more did we sell today than yesterday?").
stock_data %>% select(symbol,date,open) %>%
               mutate(
                 yesterday_price=lag(open),
                 daily_change=open-lag(open),
                 trend=if_else(open>lag(open),"up","down")
               )
##compare the today price to the one week ago using 'n' parameter of the lag function lag(price, n = 7):
stock_data %>% select(symbol,date,open) %>%
  mutate(
    yesterday_price=lag(open,n=7),
    daily_change=open-lag(open,n=7),
    trend=if_else(open>lag(open),"up","down")
  )

#Use lead() when you want to look at the future. This is often used in logistics (e.g., "On the day we shipped this package, what was the next scheduled delivery date?").
st<-stock_data_TCS %>% select(symbol,date,open,close) %>%
  mutate(
    tomorrow_price=lead(close),
    overnight_change=open-lead(close),
    week_num = paste0(year(date), "-W", isoweek(date)),#week number as per ISO8601
    will_rise=if_else(lead(close)>close,"YES","NO")
  )
tail(st)
