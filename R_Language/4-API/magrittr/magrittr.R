library(magrittr)
library(nycflights13)
library(dplyr)


#The Standard Pipe: %>%
##Definition: Passes the result of the left side as the first argument to the function on the right side.
##Use Case: Sequential data cleaning.

# Filter and then count
flights %>% 
  filter(dest == "IAH") %>% 
  nrow()


#The Tee Pipe: %T>%
##Definition: It works like %>%, but it returns the left side instead of the result of the right side.
##Use Case: When you want to perform a "side effect" (like plotting or printing) in the middle of a chain without stopping the data flow.
# Plot the data and THEN continue to calculate the mean
flights %>%
  select(dep_delay, arr_delay)  %>% # %T>%
  plot() %>%   # This creates a plot but passes the original data forward
  summarize(avg_dep = mean(dep_delay, na.rm = TRUE))

#The Assignment Pipe: %<>%
##Definition: It performs the operations and then immediately assigns the result back to the original object name.
##Use Case: To avoid writing df <- df %>% .... It keeps your code very dry (Don't Repeat Yourself).
# Instead of: flights <- flights %>% filter(month == 1)
# Use:
flights_jan <- flights %>% filter(month == 1)

flights_jan %<>% 
  mutate(total_delay = dep_delay + arr_delay)
# 'flights_jan' is now updated permanently with the new column.


#4. The Exposition Pipe: %$%
##Definition: It "explodes" the data frame so you can refer to columns directly by name without using df$column.
##Use Case: Useful for functions that don't support data frames natively (like base R's cor(), mean(), or table()).
# Standard pipe would fail here because cor() expects two vectors, not a data frame
flights %$% 
  cor(dep_delay, arr_delay, use = "complete.obs")
# This is equivalent to: cor(flights$dep_delay, flights$arr_delay)

#5.Nave Pip |> : offical version of R not part of the magrittr package
##You want your code to run as fast as possible,Works in Base R (version 4.1+).
##You want to avoid loading extra packages
##ou like clean, modern R syntax.
flights |> filter(month == 1) |> head()
#How to change the shortcut in RStudio
##By default, the shortcut Ctrl + Shift + M (Windows) or Cmd + Shift + M (Mac) inserts the %>%. Here is how to swap it:
##Go to the top menu and select Tools > Global Options -->Click on Code in the left-hand sidebar -->#Look for the tab titled Editing -->
##Check the box that says: "Use native pipe operator, |> (requires R 4.1+)" -->Click Apply or OK.


