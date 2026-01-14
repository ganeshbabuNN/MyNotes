#https://tidyverse.org/

#Tidyverse packages
install.packages("tidyverse")
library(tidyverse) #to load the core tidyverse and make it available in your current R session.
pak::pkg_system_requirements("tidyverse") #If you’re compiling from source, you can run
#https://tidyverse.tidyverse.org/

#The tidyverse is a set of packages that work in harmony because they share common data representations and API design. 
#The tidyverse package is designed to make it easy to install and load core packages from the tidyverse in a single command
#Best books https://r4ds.hadley.nz/
#Usage
library(tidyverse) #will load the core tidyverse packages:
tidyverse_packages() #to know what are the packages
  
#ggplot2,for data visualisation. https://ggplot2.tidyverse.org/
#dplyr, for data manipulation.   https://dplyr.tidyverse.org/
##dbplyr...dplyr backend         https://dbplyr.tidyverse.org/
##dtplyr ... provides data.table backend for dplyr  https://dtplyr.tidyverse.org/
##duckplyr ... larger in memory datasets    https://duckplyr.tidyverse.org/
#tidyr, for data tidying.        https://readr.tidyverse.org/
#readr, for data import.         https://readr.tidyverse.org/
#purrr, for functional programming. https://purrr.tidyverse.org/
#tibble, for tibbles, a modern re-imagining of data frames. https://tibble.tidyverse.org/
#stringr, for strings.           https://github.com/tidyverse/stringr
#forcats, for factors.           https://github.com/tidyverse/forcats
#lubridate, for date/times.      https://github.com/tidyverse/lubridate

#other subj pacakages
#Working with specific types of vectors:
##hms, for times.           https://hms.tidyverse.org/
##bob S3 framework          https://blob.tidyverse.org/
##magrittr                  https://magrittr.tidyverse.org/
##glue.. fasten strign literals https://glue.tidyverse.org/
#Tidymodels for modeling and ML learning https://www.tidymodels.org/


#Importing other types of data:
##feather, for sharing with Python and other languages. https://github.com/wesm/feather
##haven, for SPSS, SAS and Stata files.                 https://github.com/tidyverse/haven
##httr, for web apis.                                   https://github.com/r-lib/httr
##jsonlite for JSON.                                    https://github.com/jeroen/jsonlite
##readxl, for .xls and .xlsx files.                     https://readxl.tidyverse.org/index.html
##googlesheet4                                          https://googlesheets4.tidyverse.org/  
##googledrive                                           https://googledrive.tidyverse.org/
##rvest, for web scraping.                              https://rvest.tidyverse.org/
##xml2, for XML.                                        https://xml2.r-lib.org/

#Tidyselect  https://tidyselect.r-lib.org/reference/index.html

detach("package:tidyverse", unload = TRUE) #if you want to deactivate the package
tidyverse_conflicts() #You can see conflicts created later
library(MASS) #you get a message that is it linked to dplyr
tidyverse_update() #update the packaes

#Modelling
##modelr, for modelling within a pipeline
##broom, for turning models into tidy data

#Let me take an example one by one at hight level
#--------------------------------------------------
#tiyverse: One Ecosystem, Many Tools

#Philosophy:
#  Work with tidy data
#Use pipes (%>%)
#Each package does one job extremely well

#1. ggplot2 – Data Visualization -Grammar of Graphics: build plots layer by layer
#---------------------------------------------------
#before in R use 
# Convert cyl to factor (for grouping)
cyl_factor <- factor(mtcars$cyl)
# Create scatter plot
plot(mtcars$wt, mtcars$mpg,
     col = cyl_factor,
     pch = 19,
     cex = 1.2,
     xlab = "Weight",
     ylab = "Miles per Gallon",
     main = "Fuel Efficiency vs Weight")
# Add regression line
model <- lm(mpg ~ wt, data = mtcars)
abline(model, lwd = 2)
# Add legend
legend("topright",
       legend = levels(cyl_factor),
       col = 1:length(levels(cyl_factor)),
       pch = 19,
       title = "Cylinders")

#plot(x, y)
#lines(x, y2)
#legend(...)
#using ggplot2
library(ggplot2)
mtcars
factor(mtcars$cyl)
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Fuel Efficiency vs Weight",
       x = "Weight",
       y = "Miles per Gallon",
       color = "Cylinders") +
  theme_minimal()
#One line per layer → data + geometry + statistics + styling.

#2. dplyr – Data Manipulation -SQL-like grammar in R
#---------------------------------------------------
library(dplyr)
mtcars %>%
  group_by(cyl) %>%
  summarise(
    avg_mpg = mean(mpg),
    max_hp = max(hp),
    n = n()
  ) %>%
  arrange(desc(avg_mpg))

##Before in R
avg_mpg <- tapply(mtcars$mpg, mtcars$cyl, mean)
max_hp  <- tapply(mtcars$hp, mtcars$cyl, max)
n       <- tapply(mtcars$mpg, mtcars$cyl, length)

result <- data.frame(
  cyl = as.numeric(names(avg_mpg)),
  avg_mpg = avg_mpg,
  max_hp = max_hp,
  n = n
)

result <- result[order(-result$avg_mpg), ]
result
#Readable pipelines: filter → group → summarise → arrange

#3. tidyr – Data Tidying -Reshape data: wide ↔ long
#---------------------------------------------------
library(tidyr)

table <- tibble(
  id = 1:3,
  math = c(80, 90, 85),
  science = c(75, 88, 92)
)

table

table %>%
  pivot_longer(cols = math:science,
               names_to = "subject",
               values_to = "score")
#“Tidy data = one variable per column, one observation per row.”

#4. readr – Fast Data Import
#---------------------------
#Better CSV reading with correct types
#Faster than read.csv(), automatic column typing, cleaner output.
library(readr)

AE<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")
glimpse(AE)

#5. purrr – Functional Programming
#------------------------------
nums <- list(1:5, 6:10, 11:15)
sapply(nums, mean)
#With sapply() (can change type unexpectedly)
sapply(list(1:5, "a"), mean)
#sapply() may return:  numeric vector,character vector ,matrix
#map_dbl() = a safe, predictable version of sapply()
#Replace loops with map functions
library(purrr)
nums <- list(1:5, 6:10, 11:15)
map_dbl(nums, mean)
#No loops
#Type-safe (map_dbl, map_chr, map_df)

#6. tibble – Modern Data Frames
#------------------------------
tb <- data.frame(
  name = c("Arun", "Meena"),
  score = c(85, 92)
)

#Cleaner printing, no row names, strict subsetting
library(tibble)
tb <- tibble(
  name = c("Arun", "Meena"),
  score = c(85, 92)
)
tb
#Better printing, prevents silent bugs.tibble() does not add new power — it adds safety and readability.
#Everything you can do with a tibble can be done with a data.frame(), but tibbles help avoid silent bugs and messy output

#7. stringr – String Handling
#------------------------------
#Consistent string functions
library(stringr)

names <- c("AE_START_DATE", "AE_END_DATE", "DM_AGE")

str_detect(names, "AE")
str_replace_all(names, "_", " ")
#All functions start with str_, vectorised, regex-friendly.

#forcats – Working with Factors
#Reordering factors for plots and summaries
library(forcats)
f <- factor(c("Low", "High", "Medium", "High", "Low"))
f %>% fct_count()

mtcars %>%
  mutate(cyl = factor(cyl)) %>%
  count(cyl) %>%
  mutate(cyl = fct_reorder(cyl, n)) 
#Factor levels control ordering in plots.

#lubridate – Date & Time
#------------------------
##before
as.Date("2024-01-01 13:45:30", format="%Y-%m-%d %H:%M:%S") #does not handle time
as.POSIXct("2024-01-01 13:45:30", format="%Y-%m-%d %H:%M:%S")
as.POSIXct("13:45:30", format="%H:%M:%S") # see it takes today date.

library(lubridate)
d <- ymd("2025-01-01")
d
d <- ymd_h("2025-01-01 12")
d
d <- ymd_hm("2025-01-01 12:45")
d
d <- ymd_hms("2025-01-01 12:45:30")
d
d + days(10)
d + months(7)
d + years(2)
d + hours(3)
d + minutes(2)
d + seconds(3)
d + hours(1) + minutes(15) + seconds(10) #Add 1 hour, 15 minutes, 10 seconds
##Using hm() / hms() in lubridate
d+ lubridate::hms("01:15:10")  #lubridate version
d+ lubridate::hm("01:15")  #lubridate version
d+ lubridate::hm("01:00")  #lubridate version

#No more painful as.POSIXct() and manual parsing.
#Explore the library(hms) which is used only for times objects only not part of Tidyverse but good for specific requirement
t <- as_hms("13:45:30")
t + hms(1,15,10)
t + hms(1,0,0)
#Handles time without dates.

#11. feather – Fast Exchange with Python
#--------------------------------------
library(feather)
write_feather(mtcars, "cars.feather")
read_feather("cars.feather")

#12. haven – SAS / SPSS / Stata
#------------------------------
library(haven)
df <- read_sas("clinical.sas7bdat")

#13. httr – Web APIs
#------------------------------
library(httr)
res <- GET("https://api.github.com/users/ganeshbabunn/repos")
content(res)
#R can talk directly to web services.

#14. jsonlite – JSON
#-------------------
library(jsonlite)
fromJSON('{"name":"Arun","score":90}')

#15. readxl – Excel Files
#------------------------
library(readxl)
read_excel("student.xlsx", sheet = 1)
#No Java, no Excel required.

#16. rvest – Web Scraping
#------------------------
library(rvest)

url <- "https://en.wikipedia.org/wiki/List_of_countries_by_population"
page <- read_html(url)

page %>%
  html_table() %>%
  .[[1]]
#Extract tables directly from websites.

#17. xml2 – XML Files
#--------------------
#Read XML from a String (No File Needed)
library(xml2)
xml_text_data <- '
<students>
  <student id="S101">
    <name>Kiran</name>
    <age>21</age>
    <course>AI</course>
    <score>90</score>
  </student>
</students>
'
doc <- read_xml(xml_text_data)
xml_text(xml_find_all(doc, ".//name"))

#18. modelr
#----------
library(modelr)

model <- lm(mpg ~ wt + hp, data = mtcars)

mtcars %>%
  add_predictions(model) %>%
  select(mpg, pred)
#Models integrate smoothly into data pipelines.

#19. broom
#----------
#Turn model outputs into tidy data frame
library(broom)

tidy(model)
glance(model)
augment(model)
tidyverse_packages()
#Model results become data frames for plotting and reporting.


#Resources
#---------
