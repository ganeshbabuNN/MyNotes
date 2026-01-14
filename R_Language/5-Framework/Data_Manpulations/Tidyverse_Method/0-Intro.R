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
  
#ggplot2,for data visualisation.
#dplyr, for data manipulation.
#tidyr, for data tidying.
#readr, for data import.
#purrr, for functional programming.
#tibble, for tibbles, a modern re-imagining of data frames.
#stringr, for strings.
#forcats, for factors.
#lubridate, for date/times.

detach("package:tidyverse", unload = TRUE) #if you want to deactivate the package
tidyverse_conflicts() #You can see conflicts created later
library(MASS) #you get a message that is it linked to dplyr
tidyverse_update()

#other subj pacakages
#Working with specific types of vectors:
##hms, for times.

#Importing other types of data:
##feather, for sharing with Python and other languages.
##haven, for SPSS, SAS and Stata files.
##httr, for web apis.
##jsonlite for JSON.
##readxl, for .xls and .xlsx files.
##rvest, for web scraping.
##xml2, for XML.

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
library(dplyr)

mtcars %>%
  group_by(cyl) %>%
  summarise(
    avg_mpg = mean(mpg),
    max_hp = max(hp),
    n = n()
  ) %>%
  arrange(desc(avg_mpg))
#Readable pipelines: filter → group → summarise → arrange

#3. tidyr – Data Tidying -Reshape data: wide ↔ long

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
#Better CSV reading with correct types
#Faster than read.csv(), automatic column typing, cleaner output.
library(readr)

AE<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")
glimpse(AE)

#5. purrr – Functional Programming
#Replace loops with map functions
library(purrr)
nums <- list(1:5, 6:10, 11:15)
map_dbl(nums, mean)
#No loops
#Type-safe (map_dbl, map_chr, map_df)

#6. tibble – Modern Data Frames
#Cleaner printing, no row names, strict subsetting
library(tibble)

tb <- tibble(
  name = c("Arun", "Meena"),
  score = c(85, 92)
)
tb
#Better printing, prevents silent bugs.

#7. stringr – String Handling





