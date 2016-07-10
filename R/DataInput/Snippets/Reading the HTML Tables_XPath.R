library(RCurl)
library(XML)

# Download page using RCurl
# You may need to set proxy details, etc.,  in the call to getURL
theurl <- "http://en.wikipedia.org/wiki/Brazil_national_football_team"
webpage <- getURL(theurl , httpheader = c('User-Agent' = "Informative string with your contact info"))
# Process escape characters
webpage <- readLines(tc <- textConnection(webpage)); close(tc)

# Parse the html tree, ignoring errors on the page
pagetree <- htmlTreeParse(webpage, error=function(...){})

# Navigate your way through the tree. It may be possible to do this more efficiently using getNodeSet
body <- pagetree$children$html$children$body 
divbodyContent <- body$children$div$children[[1]]$children$div$children[[4]]
tables <- divbodyContent$children[names(divbodyContent)=="table"]

#In this case, the required table is the only one with class "wikitable sortable"  
tableclasses <- sapply(tables, function(x) x$attributes["class"])
thetable  <- tables[which(tableclasses=="wikitable sortable")]$table

#Get columns headers
headers <- thetable$children[[1]]$children
columnnames <- unname(sapply(headers, function(x) x$children$text$value))

# Get rows from table
content <- c()
for(i in 2:length(thetable$children))
{
   tablerow <- thetable$children[[i]]$children
   opponent <- tablerow[[1]]$children[[2]]$children$text$value
   others <- unname(sapply(tablerow[-1], function(x) x$children$text$value)) 
   content <- rbind(content, c(opponent, others))
}

# Convert to data frame
colnames(content) <- columnnames
as.data.frame(content)