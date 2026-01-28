#Intro
#Creating Strings
#Printing Strings
#Accessing String elements
#Escape characters
#String Formatting(Huge chapters)
#String Regular expressions
#String Functions
#Quiz
#Assignment
#Resources

# Intro
# =====
# *Strings are a group of characters written inside a single or double-quotes
# *Internally R stores every string within double quotes, even when you create them with single quote

#Creating Strings
#================
'Hello World' #using Single quotes
"Hello world" #using double quotes #but we cannot use double quotes or single quotes ,in the same statement more than one time

mychar <- "R is a Super Programming language"
cat(mychar,"\n")
class(mychar)

mychar <- 'R is a Super Programming language'
cat(mychar,"\n")
class(mychar)

mystr<-" I'm using single quotes, but this will create an error"# Be careful with quotes!
#for correcting the above , use double quotes
mystr<-"I'm using single quotes, but this will create an error"

x <- "Hello 'my' friends"
x
y <- "Hello 'my' friends" #observe putting single quote on the value.
y
# but we cannot use double quotes or single quotes in the same statement more than one time
#count the number of characters in the string
nchar(x)

#get class and type
class(x)
typeof(x)

#create empty strings and empty character vectors
#create an empty string
x <- ""
x
nchar(x)

# create a vector of two empty strings 
y <- character(2)
y
length(y)
nchar(y)

# create an empty character vector
z <- character(0)
z
length(z)
nchar(z)

# add a component to the vector
z[1] <- "Tom"
length(z)
nchar(z)

#check whether a variable is of character type
x <- "The wheather is fine"
is.character(x)

# convert a numeric vector in a character vector
x <- c(2, 3, 4)
typeof(x)

x <- as.character(x)
x

 typeof(x)
is.character(x)

#Rules Applied in String Construction
------------------------------------
#*The quotes at the beginning and end of a string should be both double quotes or both single quote. They can not be mixed.
#*Double quotes can be inserted into a string starting and ending with single quote.
#*Single quote can be inserted into a string starting and ending with double quotes.
#*Double quotes can not be inserted into a string starting and ending with double quotes.
#*Single quote can not be inserted into a string starting and ending with single quote.

#Printing Strings
#=================
#using R studio, you can directly enter

# We can simply declare a string
'Hello world'

#Example of valid strings
a <- "learn the R Programming language"
print(a)

a <- 'learn the R Programming language'
print(a) #observe the output R takes internally Double quotes

a <- "learn the R 'Programming language"  
print(a) #observer the output 

a <- 'learn the R "Programming language'
print(a) #observer the output 

#Example of In-valid strings
#a <- "learn the R "Programming language'
#a <- 'learn the R 'Programming language'
#a <- "learn the R"Programming language"

#String Formatting
#=================
#String formatting lets you inject items into a string rather than trying to chain items together using commas or string concatenation. As a quick comparison, consider:

#for example
company='Novo nordisk'
experience='7'
name ='Ganesh babu'

#using cat functions
cat("Myself,",name,'working in',company,' for past ',experience,' years.') 
#using paste functions
paste("Myself,",name,'working in',company,' for past ',experience,' years.') 

#There are three ways to perform string formatting
#using cat functions (classical way)
#using paste functions (classical way)
#using paste functions (classical way)
#using paste0 functions (classical way)
#using stringf() in R

#print() Function in R
#---------------------
#Definition: print() displays an R object in the console.
#Simple meaning :“Show me what is inside this object.”

#Why use print()? 
##Default way R shows output
##Useful inside functions, loops, and scripts
##Automatically called when you type an object name

#Syntax
#print(object)

#Basic Example
x <- 10
print(x)

#Real-World Example
total_sales <- 15420
print(total_sales)

#Special Behavior
print(10 + 5)
#does the same in interactive mode.

#Common Mistakes
##Expecting formatted output
##Using print() for string building

#Best Practices
##Use inside loops and functions
##Use for debugging
##Combine with sprintf() if formatting needed

#When to Use vs Not Use
##Use
###Debugging
###Checking intermediate results
##Do NOT use
###For clean formatted messages (use cat() or sprintf())

#cat() Function in R
#-------------------
#Definition: cat() concatenates and prints output directly to the console.
#Simple meaning“Say this text exactly as written.”

#Why use cat()?
##Clean console messages
##No quotes
##No [1] index
##Great for user messages

#Syntax
cat(..., sep = " ", file = "", fill = FALSE)

#Basic Example
cat("Hello World")

#Multiple Values
cat("Total:", 100, "units")

#New Line (VERY IMPORTANT)
cat("Hello\nWorld")

#Real-World Example
cat("Process completed successfully\n")

#Vector Behavior
cat(c("A", "B", "C"))

#Common Mistakes
#Forgetting \n
#Expecting returned value (cat returns NULL)

#Best Practices
##Use \n explicitly
##Use for user messages and logs
##Do not use for data storage

#When to Use vs Not Use
##Use
##Console messages
##Progress updates

#Logs
##Do NOT use
##When output needs to be saved
##When chaining functions


#paste() Function in R
#--------------------
#Definition :paste() combines values into a single string with a separator.
#Simple meaning :“Join text pieces together with space (or any separator).”

#Why use paste()?
##Create strings dynamically
##Join text + numbers
##Vectorized string joining

#Syntax
paste(..., sep = " ", collapse = NULL)

#Basic Example
paste("Hello", "R")

#Custom Separator
paste("2026", "01", "26", sep = "-")

#Vector Example
names <- c("A", "B", "C")
paste("Item", names)

#Real-World Example
first_name <- "Ganesh"
last_name <- "Babu"
paste("Full name:", first_name, last_name)

#collapse (VERY IMPORTANT)
paste(c("A", "B", "C"), collapse = ", ")

#Common Mistakes
##Forgetting collapse
##Using paste for numeric formatting

#Best Practices
##Use for simple string joining
##Combine with vectors
##Avoid complex formatting

#When to Use vs Not Use
##Use
###Joining text
###Labels
###Messages
##Do NOT use
###Decimal formatting
###Alignment needs

#One-Line Decision Rule
#Debugging / checking value --> print()
#User messages / logs --> cat()
#Joining readable text --> paste()
#IDs / filenames → paste0()
#Professional formatting → sprintf()

#paste0() Function in R
#----------------------
#Definition: paste0() is the same as paste() but without space separator.
#Simple meaning “Glue strings together tightly.”

Syntax
paste0(...)

#Equivalent to:
paste(..., sep = "")

#Basic Example
paste0("Hello", "R")

#Real-World Example (VERY COMMON)
file_id <- 10
paste0("report_", file_id, ".csv")

#Vector Example
ids <- 1:3
paste0("ID_", ids)

#Common Mistakes
#Expecting spaces
#Overusing when readability suffers

#Best Practices
#Use for IDs, filenames, keys
#Prefer paste() for readable text

#When to Use vs Not Use
##Use
###File names
###IDs
###URLs
##Do NOT use
###Human-readable sentences

#Using stringf()
--------------
#sprintf() creates formatted strings by inserting values into a template string using format specifiers.
  
#Benefits:
##Control decimal places
##Align numbers
##Add leading zeros
##Create professional reports
##Generate filenames dynamically
##Cleaner than paste() for numeric formatting
  
#Why do we need sprintf()?
paste("Score:", 9.45678) #without springf()s
sprintf("Score: %.2f", 9.45678) #with springf()s

#Basic Syntax
sprintf("format_string", value1, value2, ...)
#"format_string" → text + placeholders
#value1, value2 → values to insert

#Most Important Format Specifiers
#Specifier-->Meaning-->	Example
#%s-->String-->name
#%d-->Integer-->10
#%f-->Decimal (float)-->3.14
#%.2f-->2 decimal places-->3.14
#%05d-->Pad with zeros-->00012
#%e-->Scientific notation-->1.23e+03

#String formatting
sprintf("Hello %s", "Ganesh")
#Integer formatting
sprintf("Total items: %d", 25)
#Decimal control
sprintf("%f", 0.725896956) #by default, it prints six decimals
sprintf("%.3f", 0.725896956) #to print 3 decimals only
sprintf("%.f", 0.725896956) #round the number (print no decimals)
sprintf("%+.3f", 0.725896956) #print the + sign (but the first 3 decimals only)
sprintf("Accuracy: %.2f", 98.456)
sprintf("Accuracy: %.2f%%", 98.456) #ti add percentage sign
#Multiple Values in One String
name <- "Ravi"
score <- 87.345
sprintf("Student %s scored %.1f marks", name, score)
sprintf("%e", 82.235691) #%e and %E print the number in exponential format
sprintf("%E", 82.235691)
sprintf("%g", 82.235691) #%g prints six digits by default
sprintf("%.4g", 82.235691) #print the first 4 digits
sprintf("%.4s", "Philadelphia") #%s prints the desired number of characters in a string

#Real-World Practical Examples
##Report generation
month <- "January"
revenue <- 15432.678
sprintf("Revenue for %s: ₹%.2f", month, revenue)

##File name creation (very common)
id <- 7
sprintf("report_%03d.csv", id)

##Logging messages
time <- "10:30 AM"
users <- 124
sprintf("[%s] Active users: %d", time, users)

##we want to print the following:
"The sum of the numbers 7 and 3 is 10"
a <- 7
b <- 3
x <- sprintf("The sum of the numbers %d and %d is %d", a, b, a+b)
x

##we want to print the following:
-"The sum of the numbers 4.5 and 10 is 14.5"
a <- 4.5
b <- 10
x <- sprintf("The sum of the numbers %.1f and %d is %.1f", a, b, a+b)
x

##binary output showing rounding/representation errors
x <- seq(0, 1.0, 0.1); y <- c(0,.1,.2,.3,.4,.5,.6,.7,.8,.9,1)
cbind(x, sprintf("%a", x), sprintf("%a", y))

#Vectorized Nature of sprintf()
##sprintf() works vector-wise.
scores <- c(78.123, 82.5, 90.678)
sprintf("Score: %.1f", scores)

#Rule of thumb
##Use paste() for simple text joining
##Use sprintf() for formatted output

#Common Mistakes
##Wrong number of arguments
sprintf("Value: %d %d", 10)
##Wrong specifier
sprintf("Value: %d", "text")
##Forgetting %% for percentage
sprintf("Success: %d%", 90)   # wrong
sprintf("Success: %d%%", 90)

#When to Use vs When NOT to Use
##Use sprintf() when:
##Formatting numbers
##Generating clean outputs
##Printing aligned results
##Creating dynamic strings
#Do NOT use when:
##Just joining plain text
##No formatting control is needed

#Accessing String elements
#=========================
#-The individual characters of a string can be extracted from a string by using the indexing methods of a string
#-There are two R’s inbuilt functions in order to access both the single character as well as the substrings of the string
#-substr() or substring() function in R extracts substrings out of a string beginning with the start index and ending with the end index

#Syntax:
substr(..., start, end)
or 
substring(..., start, end)

x <- "Learn R programming"
substr(x,1,1) #grapping from start 1 to end 1
substr(x,1,5) #grapping from start 1 to end 4

#-create sequences of letters using the built-in vector letters
letters
letters[1] #-the first letter of the alphabet
letters[1:5] #-the first five letters of the alphabet
letters[c(1, 5, 14)] #-the first, fifth and fourteenth letters of the alphabet

#Escape characters
#=================
#To insert characters that are illegal in a string, use an escape character
#An escape character is a backslash \ followed by the character you want to insert.


#There are difference types:
#\': single quote. You don’t need to escape single quote inside a double-quoted string, so we can also use "'" in the previous example.
#\": double quote. Similarly, double quotes can be used inside a single-quoted string, i.e. '"'.
#\n: Starts a new line.
#\t: tab character.
#\b: Backspace.
#\": Double quote.
#\r: Carriage return.
#\\: Single Backslash

#Example:
#\' : Single Quote : Used when your string is wrapped in single quotes, but you need to include a literal single quote inside it.
cat('It\'s a beautiful day in the neighborhood.') #
#\" : Double Quote : Used when your string is wrapped in double quotes, and you need to include literal double quotes (like for speech).
cat("The professor said, \"R is powerful for statistics.\"")
#\n : New Line :Moves the cursor to the start of the next line. This is the most common way to format multi-line output.
cat("Line One\nLine Two\nLine Three") 
#\t : Tab Character:Inserts a horizontal tab, useful for aligning text or creating simple columns without a table.
cat("ID\tName\tScore\n1\tAlice\t95\n2\tBob\t88")
#\b : Backspace :Moves the cursor back one space, effectively deleting the character that was previously there.
cat("Errorrr\b\b") #try in base R ,RStudio: Often ignores \b entirely or just moves the cursor without erasing, 
#\r : Carriage Return : Moves the cursor to the beginning of the current line without moving to a new line. 
#In many modern consoles, this allows you to "overwrite" what was previously written.
cat("Loading... 0%\r") # try in base R
cat("Loading... 100%\n")
#\\ : Single Backslash :Because the backslash is the "escape character" itself, 
#if you want to print an actual backslash (like in a file path), you have to escape the escape.
cat("The file is located at C:\\Users\\Documents\\Data")

#Regular Expressions (Regexp) with Strings
#========================================
#Regex allows powerful pattern matching.
#Pattern-->	Meaning	Example
#[A-Z]-->Uppercase letters-->"ABC"
#[0-9]-->Digits-->"123"
#^-->Start of string-->^ID
#$-->End of string-->txt$
#.-->Any character-->A.
#+-->One or more-->a+
#*-->Zero or more-->a*

#Extract Digits
stringr::str_extract("ID_2025_A", "[0-9]+")
#Remove Non-Digits
gsub("[^A-Z]", "", "ID_2025_A")
?gsub

#This will be discussed in details in module 3

#Extracting Specific Patterns
#-----------------------------
#regexpr() / regmatches() - extract ABC123
text <- "Subject ID: ABC123"
m <- regexpr("[A-Z]+[0-9]+", text)
regmatches(text, m)
#str_extract()
stringr::str_extract(text, "[A-Z]+[0-9]+")

#String Functions
#================
#Objects are usually have built-in methods. 
#These methods are functions inside the object (we will learn about these in much more depth later) that can perform actions or commands on the object itself.
#Two Main Ways to Work with Strings in R
##Base R functions – built-in, no package required
##stringr functions – consistent, readable, tidyverse style

# Install once if needed
install.packages("stringr")
library(stringr)

#Creating, Combining & Formatting Strings
#----------------------------------------
#paste() – Join Strings (with space by default
paste("Hello", "World")
#paste0() – Join Without Space
paste0("ID", 101)
#sprintf() – Format Like C/SQL (Very Powerful)
sprintf("Name: %s | Age: %d | Salary: %.2f", "Ravi", 30, 45000.567) #Useful for reports, logging, and file naming.
#Case Conversion
##toupper() / tolower()
toupper("Hello")
tolower("WORLD")
#tools::toTitleCase()
tools::toTitleCase("clinical trial management")

#Length & Basic Inspection
#-------------------------
#nchar() – Number of Characters
nchar("Ganesh")
#charToRaw() / rawToChar() – Byte-Level Conversion
charToRaw("A")
#Substring Extraction
substr("ClinicalData", 1, 8)
#substring() – Similar to substr()
substring("ClinicalData", 9, 12)
#str_sub() (stringr)
stringr::str_sub("ClinicalData", 1, 8)

#Pattern Detection (Search)
---------------------------
#grepl() #Does Pattern Exist? (TRUE/FALSE)
grepl("Data", "ClinicalData")
#grep() – Return Matching Index/Values
x <- c("AE_TERM", "AE_SEVERITY", "DM_AGE")
grep("AE", x)
#str_detect() (stringr)
stringr::str_detect("ClinicalData", "Data")

#Replacement & Substitution
#--------------------------
#sub() – Replace First Match
sub("Data", "File", "ClinicalDataData")
#gsub() – Replace All Matches
gsub("Data", "File", "ClinicalDataData")
#str_replace() / str_replace_all()
stringr::str_replace("A_B_C", "_", "-")
stringr::str_replace_all("A_B_C", "_", "-")

#Splitting & Joining
#--------------------
#strsplit() – Split into Parts
strsplit("A,B,C", ",")
#str_split() (stringr)
stringr::str_split("2025-01-16", "-")
#paste() to Re-Join
parts <- c("2025", "01", "16")
paste(parts, collapse = "-")

#Trimming & Cleaning Whitespace
#------------------------------
#trimws() – Remove Leading/Trailing Spaces
trimws("   hello world   ")
#str_trim(), str_squish() (stringr)
stringr::str_trim("   hello   ")
stringr::str_squish("hello    world   today")

#Counting & Measuring Patterns
#-----------------------------
#gregexpr() – Find All Matches
gregexpr("a", "banana")
#str_count() (stringr)
stringr::str_count("banana", "a")

#String Comparison
#-----------------
# == – Exact Match
"abc" == "ABC"
"ABC" == "ABC"
#identical() – Strict Comparison
identical("abc", "abc")
identical("abc", "ABC")
#str_to_lower() + Compare (Case-Insensitive)
library(stringr)
str_to_lower("ABC") == str_to_lower("abc")

#Repeating & Padding
#-------------------
#trrep() – Repeat String
strrep("A", 5)
#sprintf() for Padding
sprintf("%05d", 23)
#str_pad() (stringr)
str_pad("23", width = 5, side = "left", pad = "0")

#Sorting & Ordering Strings
#--------------------------
#sort()
sort(c("Banana", "Apple", "Mango"))
#order()
x <- c("Banana", "Apple", "Mango")
x[order(x)]
#Case-Insensitive Sorting
x[order(tolower(x))]

#Vectorized String Operations
#----------------------------
#Most string functions in R work on entire vectors.
names <- c("Ganesh", "Ravi", "Anita")
toupper(names)

#Common Real-World Examples
#--------------------------
#Example 1: Clean Subject IDs
ids <- c(" SUB_001 ", "SUB-002", "sub_003")
ids_clean <- toupper(trimws(gsub("-", "_", ids)))
ids_clean

#Example 2: Extract Visit Number from Label
visit <- c("Visit 1", "Visit 2", "Visit 10")
as.numeric(str_extract(visit, "[0-9]+"))

#Example 3: Split First and Last Name
name <- "Ganesh Babu"
parts <- strsplit(name, " ")[[1]]
first <- parts[1]
last <- parts[2]

#Example 4: Validate Email
email <- "test@example.com"
grepl("^A-Za[-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$", email)

#Example 5: File Name Generation
subject <- "ABC123"
date <- "20250116"
paste0("Report_", subject, "_", date, ".csv")

#Common Pitfalls
#Using == for Pattern Matching
"Data" == "ClinicalData"   # FALSE
#Use:
grepl("Data", "ClinicalData")
#Forgetting Vectorization
for (i in 1:length(x)) {
  x[i] <- toupper(x[i])
}
#Better
toupper(x)
#Regex Special Characters Not Escaped
gsub(".", "", "A.B")   # removes everything
#Correct
gsub("\\.", "", "A.B")

#Summary: Most Frequently Used String Functions
#----------------------------------------------
# | Category | Functions                           |
# | -------- | ----------------------------------- |
# | Combine  | `paste`, `paste0`, `sprintf`        |
# | Case     | `toupper`, `tolower`, `toTitleCase` |
# | Length   | `nchar`                             |
# | Extract  | `substr`, `substring`, `str_sub`    |
# | Search   | `grepl`, `grep`, `str_detect`       |
# | Replace  | `sub`, `gsub`, `str_replace`        |
# | Split    | `strsplit`, `str_split`             |
# | Trim     | `trimws`, `str_trim`, `str_squish`  |
# | Count    | `str_count`, `gregexpr`             |
# | Regex    | `gsub`, `str_extract`, `regexpr`    |
# | Format   | `sprintf`, `str_pad`                |
# | Sort     | `sort`, `order`                     |

##########################################################################################################

#split case
#----------
x <- "ganesh babu"
strsplit(x," ") #split based on delimiter
strsplit(x," ")[[1]] #extract only that element
x <- "1589-3558-0156-2079"
strsplit(x, split="-") # let's split the string above by the dashes
strsplit("Philadelphia", split="d")  # another splitting examples
strsplit("New York", split=" ") #the splititng substring is not considered
strsplit("Detroit", split="") ## split by letters

##using str_split
#https://stringr.tidyverse.org/reference/str_split.html

#Strips the spaces
#-----------------
#generally used to trimt he leading and lagging spaces in the given string.
a=" ganesh babu ";
trimws(a, which = c("left")) #Strip Leading Space left
trimws(a, which = c("right")) #Strip Trailing Space
trimws(a, which = c("both")) #Strip leading and trailing space
gsub('\\s+', '', a) #Strip all the Spaces in Column in R:

#find functions
#--------------
#Searches the string for a specified value and returns the position of where it was found

text <- "This should be supported on all platforms as it is a feature of C99. The format is not uniquely defined"
grep("ganesh",text) #return the position of the string of the first index

text1 <- c("gbag","gbag","brga",'rubn','prkh','zktu')
grep("brga",text1)

x <- c("Philadelphia", "Austin")
# -finding a pattern in a vector of strings using grep()
# -this function returns the index of component
# -where you can find the patterns
grep(pattern = "del", x)
grep(pattern = "stin", x)
grep(pattern =  "w", x)
grep(pattern =  "a", x)

#-to ignore the case
grep(pattern =  "a", x, ignore.case = TRUE)

#-to get the value instead of the index we set value = TRUE
grep(pattern = "del", x, value = TRUE)
grep(pattern = "stin", x, value = TRUE)

#-the function grepl() returns logical values
#-TRUE if the pattern is there and FALSE otherwise
grepl(pattern = "del", x)
grepl(pattern = "stin", x)
grepl(pattern = "w", x)
grepl(pattern = "a", x)
grepl(pattern = "a", x, ignore.case = TRUE)

#-we can write these two functions in a simpler way
grep("del", x)
grepl("del", x)

#-regexpr() returns the first position where the pattern can be found
regexpr("hil", x)
regexpr("stin", x)
regexpr("w", x)
regexpr("a", x)
regexpr("a", x, ignore.case = TRUE)

#-gregexpr() does the same thing as regexpr()
#-only it returns a more complex list
gregexpr("hil", x)
gregexpr("stin", x)
gregexpr("w", x)
gregexpr("a", x)
gregexpr("a", x, ignore.case = TRUE)

#-another similar function is regexec()
regexec("hil", x)
regexec("stin", x)
regexec("a", x, ignore.case = TRUE)

#count function get the occurrence of a string.
#-----------------------------------------------
text1 <- c("gbag","gbag","brga",'rubn','prkh','zktu')
length(grep("gbag",text1))

#replace
-------
text <- "This should be supported on all platforms as it is a feature of C99. The format is not uniquely defined"
gsub("supported","support",text)

#in file handing scenario
x <- c("file_a.csv", "file_b.csv", "file_c.csv")
# gsub() replaces all the occurences of the pattern in each component
y <- gsub("file_","", x) 
y
x <- c("Massachussets", "Russel")
gsub("ss", "dd", x)

#-t finds pattern in x and replaces it with replacement (new) text.
x <- c("Massachussets", "Russel")
#sub() replaces the first occurence of the pattern in each component
sub("ss", "dd", x)
sub("abc", "xyz", x)

#- the chartr() function helps us change characters in a string
x <- "Mary has o cat"
chartr("o", "a", x) #to change the o into a
x <- "Mary has o dog" #another example to see how chartr() behaves
x <- "Mary has o dog" #chartr("o", "a", x)
#-so chartr() changes ALL the specified characters
#-in the following string a was replaced with *
#-and r was replaced with $
x <- "B*rry h*s * $ed t$uck"

#-to change each of them into the correct character
chartr("*$", "ar", x)

#Case changes
#------------
a<-"hello world"
a
toupper(a) #upper case
tolower(a) #lower case
casefold(a)# by default, casefold() converts everything to lower case
casefold(x, upper = TRUE) ## we can change this by setting the upper option to TRUE

library(stringr)
#https://stringr.tidyverse.org/
str_to_title(a) #title CASE

#Text alignment 
#---------------
install.packages("DescTools")
library("DesTools")
x='  Ganesh Babu'
x.center(20) # The center() method will center align the string, using a specified character (space is default) as the fill character.
x.ljust(20) #for left 
x.rjust(20) #for right

#length of the string
#--------------------
library(DescTools)
x="ganesh babu"
str_length(x)

#using nchar functions
nchar(x)

#Concatentations
#---------------
cat("ganesh","babu")
# we can concatenate string variables using the c() function
#however, the result may not be as expected
x <- "The weather"
y <- "is fine"
z <- c(x, y)
z

#a more useful concatenating function for strings is paste()
z <- paste(x, y)
z
z <- paste(x, y, sep = " ") # the default separator is the space
z # we can indicate the separator using the sep option
z <- paste(x, y, sep = "") # to use no separator
z
z <- paste(x, y, sep = "-") # to use the dash as a separator
z
x <- c("a", "b", "c", "d") 
y <- c(1, 2, 3, 4)
w <- paste(x, y) # paste() can be used to concatenate character vectors as well,it will concatenate them element-wise
w
w <- paste(x, y, sep = "--") # use a double dash as a separator (instead of the space)
w
w <- paste(x, y, sep = "--", collapse = ",") # to put a comma between the pairs of elements we use the collapse option
w
w <- paste(x, y, sep = "--", collapse = ", ") # put a comma and a space between the pairs
w
x <- c("The weather", "we go to")
y <- c("is fine", "take a walk")
z <- paste(x, y, collapse = " and ") # another example of using collapse
z
#in conclusion, we use sep to indicate 
#the separator between the elements in a pair
#and we use collapse to indicate the separator between pairs
# paste0() is a version of paste
# that uses no separator by default
paste0("Port", "land")
paste("Port", "land", sep="") # this is the same as writing
cat("The weather is fine") # another concatenating (and formatting) function is cat()
# the cat() function does not return a vector
# the line indicator ([1]) is missing
# the default separator of cat() is the space
cat("The weather", "is fine")
cat("The weather", "is fine", sep = "_")# we can modify the separator with the sep option

#start ,end and contains of string
#---------------------------------
#using grepl functions
x="ganesh babu"
grepl('^ga',x)
grepl('bu$',x)

#using substr funcionts
substr(x, 1, 2) == 'ga'
substr(x, nchar(x)-1, nchar(x)) == 'bu'
substr(x, 5, 9) #extract five characters from x form the fifth to the nineth
substr(x, 10, 5) #try to extract characters in reverse order form the tenth to the fifth
x <- c("Philadelphia", "Chicago", "Seattle")
substr(x, 2, 4) # extract three characters from each component (2, 3 and 4)
substr(x, 2, 2) <- "$" # in the vector above, replace the second character in each component with a $ sign
substr(x, 2, 4) <- "$$$" #replace the characters 2, 3 and 4 with "$$$"
# replace the second character in each component:
# with a $ in the first component
# with a * in the second component
# with a & in the third component
substr(x, 2, 2) <- c("$", "*", "&")
# replace the characters 2, 3 and 4 in each component
# with $*& in the first component
# with *&$ in the second component
# with &$* in the third component
substr(x, 2, 4) <- c("$*&", "*&$", "&$*")
x

#r3.3 the below functions exists
startsWith(x,"ga")
endsWith(x,"bu")

#-for text contain.
x <- 'ganesh babu'
#using grepl function
grepl("ne",x)
grepl("za",x)

#using str_dection function
library(stringr)
str_detect(x,"ne")
str_detect(x,"za")

#checking numeric or string
#--------------------------
x="ganesh"
y=23
z=32L
is.character(x) #check string
is.numeric(y)  #check numeric
is.integer(z)  #check integer

#using membership operators
#---------------------------
x= c("ganesh","vedha","rect","rocky")

#using in operator
'ganesh' %in% x
'rect' %in% x
'nadi' %in% x

#using not in operator using !
`%!in%` <- Negate(`%in%`) #this is tricky
'ganesh' %!in% x
'rect' %!in% x
'nadi' %!in% x

#Occurence of character in string
#--------------------------------
x <- 'ganesh babu'

#using str_count function
library(stringr)
str_count(x,"b")
str_count(x,"a")

#base R
lengths(lapply(x, grepRaw, pattern = "b", all = TRUE, fixed = TRUE))

#using gregexpr
lengths(gregexpr('a', x))

#encoding the string
#-------------------
txt = "My name is Ståle"
txt

#using stringi package
library(stringi)
stri_trans_general(txt, "Latin-ASCII")

#Tabing the string
#------------------
x <-'ganesh babu'

#using cat function
cat(x,"\t",3,"\n")
ot=cat(x,"\t",3,"\n")

#using paste function
paste(x,3,sep="\t")
#store in a output
ot=paste(x,3,sep=":\t")
ot

#index
#------
x<-"ganesh babu"

#using substr function
i=1
substr(x,i,i+1)

#using grep and strsplit function
grep("[gb]", strsplit(x, split="")[[1]])

#dquote and noquote
#------------------
#dquote adds the quote in a string and where the noquote removes the extra in the string.

#Quiz:
#=====

#Assignment:
#===========

#Resources:
#=========
# https://www.tutorialspoint.com/r/r_strings.htm
# https://www.gastonsanchez.com/r4strings/
# https://www.geeksforgeeks.org/r-strings/
# https://www.r-bloggers.com/2020/01/objects-that-feel-mutable-in-r/
# https://www.tutorialkart.com/r-tutorial/find-length-of-string-in-r-programming/
# https://rstudio-pubs-static.s3.amazonaws.com/74603_76cd14d5983f47408fdf0b323550b846.html
# https://bookdown.org/yihui/rmarkdown-cookbook/latex-output.html
# https://cran.r-project.org/doc/manuals/R-lang.html#Literal-constants  --officials
# https://www.datacamp.com/community/tutorials/strings-in-r
# #https://stringr.tidyverse.org/
# https://www.rdocumentation.org/packages/DescTools/versions/0.99.41/topics/StrAlign
