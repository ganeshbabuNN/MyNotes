
################
# CREATING STRINGS
################

### we can create a string variable using
### either double quotes or single quotes

x <- "Hello my friends"

x

y <- 'Hello my friends'

y

### we can combine double quotes with single quotes

x <- "Hello 'my' friends"

x

y <- 'Hello 'my' friends'

y

### but we cannot use double quotes or single quotes
### in the same statement more than one time

### count the number of characters in the string

nchar(x)

### get class and type

class(x)

typeof(x)

### create sequences of letters using the built-in vector letters

letters

### the first letter of the alphabet

letters[1]

### the first five letters of the alphabet

letters[1:5]

### the first, fifth and fourteenth letters of the alphabet

letters[c(1, 5, 14)]

### create empty strings
### and empty character vectors

### create an empty string

x <- ""

x

nchar(x)

### create a vector of two empty strings 

y <- character(2)

y

length(y)

nchar(y)

### create an empty character vector

z <- character(0)

z

length(z)

nchar(z)

### add a component to the vector

z[1] <- "Tom"

length(z)

nchar(z)

### check whether a variable is of character type

x <- "The wheather is fine"

is.character(x)

### convert a numeric vector in a character vector

x <- c(2, 3, 4)

typeof(x)

x <- as.character(x)

x

typeof(x)

is.character(x)

###################################################







################
# PRINTING STRINGS
################

### the most common way to print strings is to use the print() function

print("The weather is fine")

### to remove the quotes

print("The weather is fine", quote = FALSE)

### to print without quotes we can also use the noquote() function

noquote("The weather is fine")

### the format() function is used to print the strings of numbers
### in the desired format

### print the string retaining 3 digits only

format(3.823564997, digits = 3)

### the nsmall option indicates the minimum number of decimal places

format(5.8, nsmall = 4)

### format() also converts numbers in strings

x <- 5.45839

typeof(x)

y <- format(x, digits = 3)

y

typeof(y)

### the sprintf() function offers more advanced formatting options

### syntax: sprintf(format, string)

### all the formats start with a % sign
### and they are put between double quotes

### %f is used for decimal numbers
### by default, it prints six decimals

sprintf("%f", 0.725896956)

### to print 3 decimals only

sprintf("%.3f", 0.725896956)

### round the number (print no decimals)

sprintf("%.f", 0.725896956)

### print the + sign (for positive numbers)

sprintf("%+f", 0.725896956)

### print the + sign (but the first 3 decimals only)

sprintf("%+.3f", 0.725896956)

### %e and %E print the number in exponential format

sprintf("%e", 82.235691)

sprintf("%E", 82.235691)

### %g prints six digits by default

sprintf("%g", 82.235691)

### print the first 4 digits

sprintf("%.4g", 82.235691)

### %s prints the desired number of characters in a string

sprintf("%.4s", "Philadelphia")

### %d is used to print integers

sprintf("%d", 23755)

### advanced uses of the sprintf() function

### we want to print "This book costs 12.8 dollars"
### (the book price is 12.82)

sprintf("This book costs %.1f dollars", 12.82)

### we want to print the following:
### "The sum of the numbers 7 and 3 is 10"

a <- 7

b <- 3

x <- sprintf("The sum of the numbers %d and %d is %d", a, b, a+b)

x

### we want to print the following:
### "The sum of the numbers 4.5 and 10 is 14.5"

a <- 4.5

b <- 10

x <- sprintf("The sum of the numbers %.1f and %d is %.1f", a, b, a+b)

x


#################################################################









#####################
# CONCATENATING STRINGS
#####################

### we can concatenate string variables using the c() function
### however, the result may not be as expected

x <- "The weather"

y <- "is fine"

z <- c(x, y)

z

### a more useful concatenating function for strings is paste()

z <- paste(x, y)

z

### the default separator is the space
### we can indicate the separator using the sep option

z <- paste(x, y, sep = " ")

z

### to use no separator

z <- paste(x, y, sep = "")

z

### to use the dash as a separator

z <- paste(x, y, sep = "-")

z

### paste() can be used to concatenate character vectors as well

### it will concatenate them element-wise

x <- c("a", "b", "c", "d")

y <- c(1, 2, 3, 4)

w <- paste(x, y)

w

### use a double dash as a separator (instead of the space)

w <- paste(x, y, sep = "--")

w

### to put a comma between the pairs of elements we use
### the collapse option

w <- paste(x, y, sep = "--", collapse = ",")

w

### put a comma and a space between the pairs

w <- paste(x, y, sep = "--", collapse = ", ")

w

### another example of using collapse

x <- c("The weather", "we go to")

y <- c("is fine", "take a walk")

z <- paste(x, y, collapse = " and ")

z

### in conclusion, we use sep to indicate 
### the separator between the elements in a pair
### and we use collapse to indicate the separator between pairs

### paste0() is a version of paste
### that uses no separator by default

paste0("Port", "land")

### this is the same as writing

paste("Port", "land", sep="")

### another concatenating (and formatting) function is cat()

cat("The weather is fine")

### the cat() function does not return a vector
### the line indicator ([1]) is missing

### the default separator of cat() is the space

cat("The weather", "is fine")

### we can modify the separator with the sep option

cat("The weather", "is fine", sep = "_")


#################################################################









#######################
# STRING MANIPULATION (1)
#######################

### to change the case of a string, we can use the functions
### tolower(), toupper() and casefold()

x <- "Mark and Jenny went to New York"

### tolower() converts everything to lower case

tolower(x)

### toupper() converts everything to upper case

toupper(x)

### by default, casefold() converts everything to lower case

casefold(x)

### we can change this by setting the upper option to TRUE

casefold(x, upper = TRUE)

### the chartr() function helps us change characters in a string

### suppose we wanted to write "Mary has a cat"
### but we erroneously wrote:

x <- "Mary has o cat"

### to change the o into a

chartr("o", "a", x)

### another example to see how chartr() behaves

x <- "Mary has o dog"

chartr("o", "a", x)

### so chartr() changes ALL the specified characters

### in the following string a was replaced with *
### and r was replaced with $

x <- "B*rry h*s * $ed t$uck"

### to change each of them into the correct character

chartr("*$", "ar", x)

#################################################################











#######################
# STRING MANIPULATION (2)
#######################

### how to extract a substring from a string

x <- "Philadelphia"

### we will use the substr() function

### we must specify: the string, 
### the position of the first character 
### and the position of the last character

### extract five characters from x
### form the fifth to the nineth

substr(x, 5, 9)

### try to extract characters in reverse order
### (for example, form the tenth to the fifth)

substr(x, 10, 5)

### substr() is a vectorized function 

x <- c("Philadelphia", "Chicago", "Seattle")

### extract three characters from each component (2, 3 and 4)

substr(x, 2, 4)

### in the vector above, replace the second character
### in each component with a $ sign

substr(x, 2, 2) <- "$"

x

x <- c("Philadelphia", "Chicago", "Seattle")

### replace the characters 2, 3 and 4 with "$$$"
### (in each component)

substr(x, 2, 4) <- "$$$"

x

x <- c("Philadelphia", "Chicago", "Seattle")

### replace the second character in each component:
### with a $ in the first component
### with a * in the second component
### with a & in the third component

substr(x, 2, 2) <- c("$", "*", "&")

x

x <- c("Philadelphia", "Chicago", "Seattle")

### replace the characters 2, 3 and 4 in each component
### with $*& in the first component
### with *&$ in the second component
### with &$* in the third component

substr(x, 2, 4) <- c("$*&", "*&$", "&$*")

x

#################################################################






#######################
# STRING MANIPULATION (3)
#######################

### how to split a string based on a substring

### we use the strsplit() function

### we must specify the string and the substring

x <- "1589-3558-0156-2079"

### let's split the string above by the dashes

strsplit(x, split="-")

### another splitting examples

strsplit("Philadelphia", split="d")

### the splititng substring is not considered

strsplit("New York", split=" ")

### split by letters

strsplit("Detroit", split="")

#################################################################










###################################
# FUNCTIONS TO FIND PATTERNS IN STRINGS
###################################

x <- c("Philadelphia", "Austin")

### finding a pattern in a vector of strings using grep()

### this function returns the index of component
### where you can find the pattern

grep(pattern = "del", x)

grep(pattern = "stin", x)

grep(pattern =  "w", x)

grep(pattern =  "a", x)

### to ignore the case

grep(pattern =  "a", x, ignore.case = TRUE)

### to get the value instead of the index we set value = TRUE

grep(pattern = "del", x, value = TRUE)

grep(pattern = "stin", x, value = TRUE)

### the function grepl() returns logical values
### TRUE if the pattern is there and FALSE otherwise

grepl(pattern = "del", x)

grepl(pattern = "stin", x)

grepl(pattern = "w", x)

grepl(pattern = "a", x)

grepl(pattern = "a", x, ignore.case = TRUE)

### we can write these two functions in a simpler way

grep("del", x)

grepl("del", x)

### regexpr() returns the first position where the pattern can be found

regexpr("hil", x)

regexpr("stin", x)

regexpr("w", x)

regexpr("a", x)

regexpr("a", x, ignore.case = TRUE)

### gregexpr() does the same thing as regexpr()
### only it returns a more complex list

gregexpr("hil", x)

gregexpr("stin", x)

gregexpr("w", x)

gregexpr("a", x)

gregexpr("a", x, ignore.case = TRUE)

### another similar function is regexec()

regexec("hil", x)

regexec("stin", x)

regexec("a", x, ignore.case = TRUE)

#################################################################













###################################
# FUNCTIONS TO REPLACE PATTERNS IN STRINGS
###################################

### there are two important functions that find a pattern
### and replace it with another string
### sub() and gsub()

### sub() replaces the first occurence of the pattern in each component

x <- c("Massachussets", "Russel")

sub("ss", "dd", x)

sub("abc", "xyz", x)

### gsub() replaces all the occurences of the pattern in each component

gsub("ss", "dd", x)

###########################################################











###################
# REGULAR EXPRESSIONS
###################

### a regular expression is a sequence of characters used to define a pattern

### these expressions are used in the functions
### that find or replace patterns in strings

### grep(), grepl(), regexpr(), gregexpr(), regexec()
### sub(), gsub()

### they can be also used in other functions like strsplit()

### find the components in a character vector
### that contain at least one of the letters l or d

grep("[ld]", c("Philadelphia", "Milwaukee", "Boston"), value = TRUE)

grepl("[ld]", c("Philadelphia", "Milwaukee", "Boston"))

### replace the l and d letters with a $

gsub("[ld]", "$", c("Philadelphia", "Milwaukee", "Boston"))

### replace the l and d letters with three asterisks

gsub("[ld]", "***", c("Philadelphia", "Milwaukee", "Boston"))


### find the components in a character vector
### that contain any other letters than l or d

grep("[^ld]", c("Philadelphia", "Milwaukee", "Boston"), value = TRUE)

grepl("[^ld]", c("Philadelphia", "Milwaukee", "Boston"))

grep("[^top]", c("stop", "pause", "top"), value = TRUE)

### find the components in a character vector
### that contain any of the characters 2 or 5

grep("[25]", c("as148", "tm254", "wd570"), value = TRUE)

### find the components in a character vector
### that contain any other characters than 2 or 5

grep("[^25]", c("as148", "25", "wd570"), value = TRUE)

### find the components in a character vector
### that contain any of the characters in the 2-5 interval

grep("[2-5]", c("as148", "tm254", "wd189"), value = TRUE)

### find the components in a character vector
### that contain any other character than the characters in the 2-5 interval

grep("[^2-5]", c("as148", "234", "167"), value = TRUE)

### the period (.) replaces any character

x <- c("target", "window", "store", "stairs")

### find the components that contain the sequence 
### t - any character - r

grep("t.r", x, value = TRUE)

### find the components that contain the sequence 
### t - any two characters - r

grep("t..r", x, value = TRUE)

### to represent a period we precede it with two backslashes (\\.)

x <- c("bnm", "as.d", "qwe.")

### find the components that contain a period

grep("\\.", x, value = TRUE)

### find the components that contain at least a digit

x <- c("stop", "wait35", "4abc")

grep("\\d", x, value = TRUE)

### find the components that contain other characters than digits

x <- c("stop", "wait35", "789")

grep("\\D", x, value = TRUE)

### find the components that contain at least a space

x <- c("abc", "d ef", "ghi  ")

grep("\\s", x, value = TRUE)

### find the components that contain other characters than spaces

x <- c("abc", "d ef", "   ")

grep("\\S", x, value = TRUE)

### find the components that contain words
### a word is a string that contains at least
### one alpha-numeric character (letter, number and underscore)

### N.B. the underscore (_) is alpha-numeric character, while the dash (-) is not

x <- c("stop", "stop12", "456", "abc ", "abc-_","", "4$#", "$&#", "#@_", "#@-")

grep("\\w", x, value = TRUE)

### "stop", "stop12", "456", "abc ", "abc-_" are words

### "4$#" is a word (it contains an alpha-numeric character)

### "" is not a word (it is an empty string)

### "#@_" is a word (it contains the underscore, which is alpha-numeric)

### "$&#" is not a word (it only contains special characters)

### "#@-" is not a word (because the dash is not alpha-numeric)


### find the components that contain non-words
### a non-word is a string that does not contain any
### alpha-numeric character (only spaces and special characters)

x

grep("\\W", x, value = TRUE)

### "stop", "stop12" and "456" do NOT contain non-words
### (all their characters are alpha-numeric)

### "" is an empty string, so it does NOT contain non-words

### "abc ", "abc-_" do contain non-words (space and dash, respectively)

### "4$#", "$&#", "#@_" and "#@-" do contain non-words (special characters)

#####################################################################



