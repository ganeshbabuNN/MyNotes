library(ggplot2)

df <- data.frame(
  x = c(0,1,2,3),
  y = c(3,8,1,10)
)
 
#Line Plot
ggplot(df, aes(x, y)) +
  geom_line()
#Add Points (Marker equivalent)
ggplot(df, aes(x, y)) +
  geom_line() +
  geom_point()

#Change Color
#Inside aes (based on variable)
ggplot(df, aes(x, y, color = factor(x))) +
  geom_line()
#Outside aes (fixed color)
ggplot(df, aes(x, y)) +
  geom_line(color = "red")
#Change Line Type
ggplot(df, aes(x, y)) +
  geom_line(linetype = "dashed")

ggplot(df, aes(x, y)) +
  geom_line(linetype = "solid")

ggplot(df, aes(x, y)) +
  geom_line(linetype = "dotted")

ggplot(df, aes(x, y)) +
  geom_line(linetype = "dotdash")

#Multiple Lines (Grouping)
df2 <- data.frame(
  x = rep(1:4, 2),
  y = c(3,8,1,10, 2,6,4,9),
  group = rep(c("A","B"), each = 4)
)

ggplot(df2, aes(x, y, color = group)) +
  geom_line()
#ggplot automatically groups by color. 

#Bar Plot
ggplot(df, aes(x = factor(x), y = y)) +
  geom_col()

ggplot(df, aes(x = factor(x), y = y, fill = factor(x))) + 
  geom_col()

ggplot(df, aes(x = factor(x), y = y, fill = factor(x))) + 
  geom_bar(stat = "identity")

#Difference:
##geom_bar() --> counts automatically
##geom_col() --> uses provided y values

#Scatter Plot
ggplot(df, aes(x, y)) +
  geom_point()

#Facets (Subplots Equivalent)
#Like matplotlib subplots.
ggplot(df2, aes(x, y)) +
  geom_line() +
  facet_wrap(~ group)

#Grid style:
facet_grid(rows = vars(group))

#Themes (Styling)
#Default theme:
theme_gray()
#Clean theme:
theme_gray()+ theme_minimal()
#Professional:
theme_gray()+ theme_classic()
#Modify Text & Appearance
+ theme(
  plot.title = element_text(size = 18, face = "bold"),
  axis.title = element_text(size = 14)
)

#Scatter Plot
#Arrival Delay vs Departure Delay
#Insight: Strong positive relationship — if departure is delayed, arrival is usually delayed.
flights %>%
  filter(!is.na(dep_delay), !is.na(arr_delay)) %>%
  sample_n(2000) %>%   # reduce size for plotting
  ggplot(aes(dep_delay, arr_delay)) +
  geom_point(alpha = 0.4) +
  labs(
    title = "Departure Delay vs Arrival Delay",
    x = "Departure Delay (minutes)",
    y = "Arrival Delay (minutes)"
  ) +
  theme_minimal()

#Bar Plot
#Average Arrival Delay by Airline
#reorder() sorts bars automatically.
flights %>%
  group_by(carrier) %>%
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE)) %>%
  arrange(desc(avg_delay)) %>%
  ggplot(aes(reorder(carrier, avg_delay), avg_delay)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(
    title = "Average Arrival Delay by Airline",
    x = "Airline",
    y = "Average Arrival Delay (minutes)"
  ) +
  theme_classic()

#Line Plot
#Monthly Average Departure Delay
flights %>%
  group_by(month) %>%
  summarise(avg_dep_delay = mean(dep_delay, na.rm = TRUE)) %>%
  ggplot(aes(month, avg_dep_delay)) +
  geom_line(color = "red", linewidth = 1) +
  geom_point(size = 2) +
  labs(
    title = "Monthly Average Departure Delay",
    x = "Month",
    y = "Average Departure Delay (minutes)"
  ) +
  theme_minimal()

#Histogram
#Distribution of Arrival Delay
flights %>%
  filter(arr_delay < 200) %>%   # remove extreme outliers
  ggplot(aes(arr_delay)) +
  geom_histogram(binwidth = 10, fill = "darkgreen", color = "white") +
  labs(
    title = "Distribution of Arrival Delays",
    x = "Arrival Delay (minutes)",
    y = "Count"
  ) +
  theme_minimal()

#Boxplot
#Arrival Delay by Origin Airport
#EWR often shows higher variability.
flights %>%
  ggplot(aes(origin, arr_delay)) +
  geom_boxplot(fill = "orange") +
  coord_cartesian(ylim = c(-50, 200)) +
  labs(
    title = "Arrival Delay by Origin Airport",
    x = "Origin Airport",
    y = "Arrival Delay (minutes)"
  ) +
  theme_classic()

#Faceting (Subplots Equivalent)
#Monthly Pattern by Carrier
#This creates multiple small plots automatically.
flights %>%
  group_by(month, carrier) %>%
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE), .groups = "drop") %>%
  ggplot(aes(month, avg_delay)) +
  geom_line(color = "blue") +
  facet_wrap(~ carrier) +
  theme_minimal() +
  labs(
    title = "Monthly Avg Arrival Delay by Carrier",
    x = "Month",
    y = "Avg Arrival Delay"
  )

#Multiple Lines in One Plot
flights %>%
  group_by(month, origin) %>%
  summarise(avg_delay = mean(dep_delay, na.rm = TRUE), .groups = "drop") %>%
  ggplot(aes(month, avg_delay, color = origin)) +
  geom_line(linewidth = 1) +
  labs(
    title = "Monthly Departure Delay by Origin",
    x = "Month",
    y = "Average Departure Delay"
  ) +
  theme_minimal() 
#Professional-Level Styling Tip
+ theme(
  plot.title = element_text(size = 16, face = "bold"),
  axis.title = element_text(size = 12),
  legend.position = "bottom"
)

