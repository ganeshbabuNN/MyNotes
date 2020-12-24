#IF-Else
#it executes a statement if a given conditions is true.
grade <- "ganesh"
if(is.character(grade)) grade <- as.factor(grade)
out <- if(!is.factor(grade)) grade <- as.factor(grade) else print("Grade already is a factor")
