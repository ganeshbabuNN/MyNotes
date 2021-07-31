# For URL HTML tables
################
#package 
install.packages("rvest")

#load the package
library(rvest)

#create the object of the URL contains data endpoint.
theurl <- https://en.wikipedia.org/wiki/Brazil_national_football_team

file<-read_html(theurl)
tables<-html_nodes(file, "table")
table1 <- html_table(tables[5], fill = TRUE)


