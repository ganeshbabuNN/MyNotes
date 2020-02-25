
###############
# VARIABLES IN R
###############

### there are three types of variables in R:
### numeric, character (string) and logical

### a variable name must start with a letter
### it can contain letters, figures and underscores
### it cannot contain dashes and other special characters:
### like #, $, %, &, *, \, / etc.

### in R we can use the equal sign (=) to assign values to variables
### however, another assigment symbol is often preferred: <-

### the "arrow" is directed to the variable name

x <- 5

y <- 7

x + y

x - y

x * y

x / y

y / x

x ^ y

### we can store the result in a new variable

z <- x + y

z

w <- x * y

w

### get the class and type of a variable

### the class represents the abstract type of the object
### the type represents how the object is stored in the memory

class(x)

typeof(x)

### the type is double because R uses the double-precision 
### floating point format to store data

### to create a string variable we use the double quotes

v <- "Tom"

v

class(v)

typeof(v)

t <- "53"

class(t)

typeof(t)

t

### the logical variables can take two values: TRUE and FALSE

m <- TRUE

n <- FALSE

class(m)

typeof(m)

### we can perform mathematical operations with the logical values
### TRUE is assimilated to 1 and FALSE to 0

m + n

m + m

m * n

n / m

m / n

### the variable names are case sensitive

X <- 100

### actually, everything in R is case sensitive

Print("Hello")

### to get the list of the variables in the environment

ls()

### to remove a variable from the environment
### we use the rm() function

rm(x)

rm(y, z)

### to remove all the variables

rm(list=ls())

#####################################################################
