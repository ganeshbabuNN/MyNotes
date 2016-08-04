#Counts the number of character x
x <- c("ab","c","es","ds","ss")
nchar(x)
nchar(x[4])

#Extracts or replaces substring in a character vector
x <- "abcdef"
substr(x,2,4)
substr(x,2,4) <- "22222"
x

#grep functions search for pattern in x
grep("A",c("b","A","c"),fixed = TRUE)

#sub functions find the pattern of x and subsitute the replacment
#fixed=TRUE is for regular expression
#fixed=FALSE is for text string
sub("\\s",".","Hello There" ,fixed = TRUE,ignore.case = FALSE)
sub("\\s",".","Hello There" ,fixed = FALSE)

#Sprsplit elements of character vector x
strsplit("abc","",fixed = FALSE)

#paste functions contactenates strings after using the setp string to separte them
paste("x",1:3,sep="")

#toupper function for uppercase
toupper("abc")

#lower function
tolower("ABC")

