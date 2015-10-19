RSiteSearch("arithmetic mean") #Search on http://search.r-project.org
RSiteSearch("{arithmetic mean}") #Use braces for exact search
install.packages("sos") #Install sos package
library(sos) #Load SOS package
findFn("{arithmetic mean}") #Search using findFn
findFn("{arithmetic mean}",maxPages=2) #Use maxPages parameter to get top pages
???"{arithmetic mean}"(2) #Shortcut for using findFn with maxPages parameter