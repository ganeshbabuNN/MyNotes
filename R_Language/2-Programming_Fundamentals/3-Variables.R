#Intro 
#Variable Assignment Operator in R
#Variable Naming Rules
#Variable Types (Based on Data)
#Variable Scope
#Mutable and immutable Objects
#Variable Lifetime
#Dynamic Typing in R
#Type and Structure of variable
#Variable Operations
#Quiz
#Assignment
#Resources

#Intro
#=====
#Definations: A variable is a named container that stores data values in memory.
#purpose : To store, reuse, and manipulate data.

x <-10
#x -->variable name
#<- --> Left assignment operator
#10 --> value stored

#Real-World Example
monthly_salary <- 45000

#A variable provides us with named storage that our programs can manipulate
#A variable in R can store an atomic vector, group of atomic vectors or a combination of many Robjects

#Variables in Expressions
a <- 5
b <- 3
c <- a + b * 2
#b * 2 evaluated first.

#Real-World Example
weight <- 70
height <- 1.75
bmi <- weight / (height^2)
bmi


#Variable Assignment Operator in R
#=================================
#<-	: Standard assignment	or called as left assignment or left ward operator((recommended))
#=	: Assignment	x = 10
#->	: Right assignment	10 -> x
#<<- :	Global assignment	x <<- 10

x <- 10 #standard assignment
x = 10 #assignment
10 -> x # Right Assignment
x <<- 10 #Global assignment
#Best practice: Always use <-

#*The variables can be assigned values using leftward, rightward and equal to operator.
#*the values of the variables can be printed using print() or cat() function. The cat() function combines multiple items into a continuous print output.

#Single variable assignment
#--------------------------
# Assignment using equal operator.
var1 = c(0,1,2,3)           

# Assignment using leftward operator.
var2 <- c("I am ","Ganesh")   

# Assignment using rightward operator.   
c(TRUE,1) -> var3      #C(TRUE,1) is a mixed types     

print(var1)
cat ("var1 is ", var1 ,"\n")
cat ("var2 is ", var2 ,"\n")
cat ("var3 is ", var3 ,"\n")

#Multiple Assignment
#-------------------
#-Rallows us to assign a value to multiple variables in a single statement which is also known as multiple assignment.

#1. Assigning single value to multiple variables
x=y=z=5
print(x)
print(y)
print(z)

#2.Assigning multiple values to multiple variables is not allowed in R like

#a,b,c = 3,4,5
print(a)
print(b)
print(c)

#Variable Naming Rules
#=====================
#Rules defining valid variable names.

#Has letters, numbers, dot and underscore 
name<-"ganesh"
name.<-"ganesh"
name2<-"ganesh"
name_<-"ganesh"
#Does not have the character '%'. Only dot(.) and underscore allowed.
name%<-"ganesh" #invalid
#Does not start with a number
2name<-"ganesh" #invalid
#Can start with a dot(.) but the dot(.)should not be followed by a number.
.name<-"ganesh"
.2name<-"ganesh" #invalid
.name2<-"ganesh"
#Starts with _ which is not valid
_name<-"ganesh"
#Reserved Words (Cannot Be Variables)
#if, else, for, while, function, TRUE, FALSE, NULL
if <-"ganesh"

#conventions Suggested
#this are suggestion ways
myVariable	#camel case
myVaraible_  #for tempervory case
name <- "ganesh" #

#Common Mistakes:
##Using spaces
##Using reserved words
#Best Practices:
##Use snake_case

#Real-World Example:
customer_id <- 1023

#Variable Types (Based on Data)
#==============================
#In R, a variable itself is not declared of any data type, rather it gets the data type of the R - object assigned to it
#Variable type depends on the object stored.
#So R is called a dynamically typed language, which means that we can change a variable’s data type of the same variable again and again when using it in a program

a <- 2 #numeric
b <- 2L #integer
c <-"ganesh" #character
d <- TRUE #Logical
e <- 1+2i # complex
class(a)
class(b)
class(c)
class(d)
class(e)
#More data types are explain in data type chapter.

#Real-World Example:
is_active <- TRUE

#Best practices
##Always verify using class()


#Variable Scope
#==============
#In programming languages, variables need to be defined before using them
#These variables can only be accessed in their area where they are defined, this is called scope.

#Type of scope
#1)Global Variables
#2)Local Variables

#Global Variables (Variable Shadowing)
#-------------------------------------
#As the name suggests, Global Variables can be accessed from any part of the program.
#They are available throughout the lifetime of a program.
#They are declared anywhere in the program outside all of the functions or blocks.
#Declaring global variables: Global variables are usually declared outside of all of the functions and blocks. 
#They can be accessed from any portion of the program.
#Local variable hides global variable with same name.

a <- 7 # global variables

#creating a functions
display <- function(){
  print(a) #accessing the global variable
}
display() #calling the function
#changing the value of global variable
a <- 10
print(a)

#2)Local Varaibles (Variable Visibility)
#-----------------
#Determines which variables are visible in a scope.
#Variables defined within a function or block are said to be local to those functions.
#Local variables do not exist outside the block in which they are declared, i.e. they can not be accessed or used outside that block.
#Declaring local variables: Local variables are declared inside a block.

a <- 7

#creating a functions
display <- function(){
  print(a) #accessing the global variable
  b <- 6 #assing a local variable .Variables inside Functions
  print(b) #accessign the local variable
}

display() #calling the function

#changing the value of global variable
a <- 10
print(a)
print(b) #accessing the local variable
b <-3 #cannot change the local variable and it assuems it a new varible
print(b)

#Global Assignment
#-----------------
#also called as Super Assignment (<<-)
#Allows modifying a global variable from inside a function.
x <- 5
f <- function() {
  x <<- x + 1
}
f()
x #Use sparingly

#Mutable and immutable Objects
#=============================
#TRUTH 
#Some objects change in place, others do not.
#R objects are immutable by default.But some special objects behave as mutable.
#Vectors are immutable, environments are mutable.

#R uses:
##Copy-on-modify
##Lazy duplication
##Shared memory

#Immutable - value cannot be changed
#-----------------------------------
#An immutable object is an object whose value cannot be changed in place.
#If you try to change it, R silently creates a copy.

#Note:
#You can “change” it in code —but internally, R creates a new object.

#before that in order to get the memory address
install.packages("lobstr")
library(lobstr)
#Use obj_addr() function to get address

#Example
#Numeric Vector (Immutable)
x <- c(10, 20, 30)
y <- x          # y points to same object
y[1] <- 999
obj_addr(x)#x stays unchanged
obj_addr(y) #x stays unchanged
#This is immutability with copy-on-modify

#Most R Objects Are Immutable - All these follow copy-on-modify
#Numeric
#Character
#Logical
#List
#Matrix
#Data frame
#Array
#Factor

#Why R Chose Immutability
#Benefits
#Predictable behavior
#No accidental side effects
#Safe function calls
#Easier debugging

#mutable - value can be modified
#-------------------------------
#A mutable object is one that can be modified in place without creating a copy.
#Only very special object types are mutable.

#Example
e <- new.env()
obj_addr(e)
e$x <- 10
f <- e
obj_addr(f)
f$x <- 999
obj_addr(f)
e$x
#Same memory
#No copy
#Change visible everywhere

#data.table — Mutable by Design
library(data.table)
DT <- data.table(a = 1:3)
obj_addr(DT)
DT2 <- DT
obj_addr(DT2)
DT2[, a := a * 10]
DT
obj_addr(DT)
#DT is changed
#No copy created
#:= modifies by reference

#R6 Objects — OOP Style Mutability
library(R6)

Person <- R6Class(
  "Person",
  public = list(
    name = NULL,
    initialize = function(name) {
      self$name <- name
    }
  )
)

p1 <- Person$new("Ram")
obj_addr(p1)
p2 <- p1
obj_addr(p2)
p2$name <- "Shyam"
p1$name

#Same object
##Mutated in place

#Variables as References (Copy-On-Modify)
#----------------------------------------
#R uses copy-on-modify semantics.
library(lobstr)
x <- c(1, 2, 3)
obj_addr(x)
y <- x # shares the same address
obj_addr(y)
y[1] <- 100 #modify the data but share different adderess
obj_addr(y)
x
obj_addr(x)


#Variable Lifetime
#=================
#In R, the duration (or lifetime) of a variable in an environment depends on where it is created and whether its environment is still referenced.
#Here’s a breakdown
#Duration for which variable exists in memory.

#Global Environment
##Variables created in the global environment (e.g., at the R console) persist until you remove them or end the R session.
x <- 10   # Created in global environment
print(x)  # Exists until removed
rm(x)     # Remove variable

#Function (Local) Environment
##Variables created inside a function exist only while the function is running.
##Once the function finishes, its local environment is destroyed unless it is captured in a closure
my_func <- function() {
  y <- 5
  print(y)
}
my_func() #ensure all the 'y' objects are removed if there are used before
print(y)  # Error: object 'y' not found


#Closures(Extended Lifetime)
##Functions that remember variables from their creation environment.
##If a function returns another function that references a variable, that variable’s environment is kept alive.

make_counter <- function() {
  count <- 0
  function() {
    count <<- count + 1
    count
  }
}

counter <- make_counter()
counter()  # 1
counter()  # 2
#Here, count persists as long as counter exists.

#Package/Namespace Environments
##Variables in package environments persist for the duration of the R session unless explicitly removed.

#Temporary Environments
##Created during evaluation (e.g., with(), eval()), and destroyed immediately after use.
with(mtcars, mean(mpg))  # Temporary environment


#Environment Type -->	Lifetime Duration
#Global -->	Until removed or session ends
#Function Local -->	Until function exits
#Closure -->	As long as closure exists
#Package/Namespace -->	Until session ends
#Temporary (with/eval) -->	Until expression finishes

#Dynamic Typing in R
#===================
#R is dynamically typed
#Variable type can change anytime.
x <- 10
x <- "Ten"
x <- TRUE
#No declaration needed

#Pros and Cons of Dynamic Typing
#-------------------------------
#Pros of Dynamic Typing
#-very easy to work with
#-faster development time

#Cons of Dynamic Typing
#-may result in unexpected bugs!
#-you need to be aware of `typeof()`

#Type hinting
#------------
#you can control or convert the type using functions such as:
##as.integer() – Convert to integer
##as.numeric() – Convert to numeric (double)
##as.character() – Convert to string
##as.logical() – Convert to boolean
x <- as.integer(10.7)   # x is now integer 10
typeof(x)               # "integer"
class(x)                # "integer"

#Enforce a type-like behavior,
#If you want to enforce a type-like behavior, you can:
##Manually convert values when assigning.
##Use S3/S4 classes or typed packages to create stricter type rules.
#Use stopifnot() or assertthat to validate types at runtime.
#Example with type check:
#Copy code
x <- 42
stopifnot(is.numeric(x))  # Will throw error if x is not numeric

#Type and Structure of variable
#==============================
class(x)
typeof(x)
str(x)

#this will be discussed in details in data type chapter.

#Variable Operations
#===================
#Reassignment and Overwriting
#----------------------------
#Assigning a new value to an existing variable.

x <- 10
x <- 20

#Real-World Example:
balance <- balance - withdrawal

#Common Mistakes:
##Losing original value unintentionally
#Best Practices:
##Use new variables for transformations

#Copying Variables
#-----------------
#Assigning one variable’s value to another.
y <- x
obj_addr(x)
obj_addr(y)

#Real-World Example:
backup_data <- original_data
#R uses copy-on-modify

#Removing Variables
#-----------------
#Deletes variables from memory.

rm(var.3) #Variables can be deleted by using the rm() function.
print(var.3)
rm(x)
rm(y, z)#more then one variable
rm(list = ls()) #All the variables can be deleted by using the rm() and ls() function together.
rm(list=ls()) ### to remove all the variables
#Real-World Example:
rm(temp_data)

#Best Practices:
##Clean large unused objects

#Listing Variables
#-----------------
#Shows all variables in current environment.
ls()

#Finding variables
#-----------------
print(ls()) #To know all the variables currently available in the workspace we use the ls() function
print(ls(pattern = "var")) ## List the variables starting with the pattern "var".
print(ls(all.name = TRUE)) #The variables starting with dot(.) are hidden, they can be listed using "all.names = TRUE" argument to ls() function.

#Checking Variables
#-----------------
#exists
exists("x")

#Pass-by-Value
#-------------
#R copies data when a variable is modified.
f <- function(x) { x <- x + 1 }
f(3)

#Default Values
#--------------
#Variables can have default values in functions.
f <- function(x = 100) { x }
f()

#Reference Semantics
#-------------------
#Some objects modify data without copying.
library(data.table)
DT[, a := 10]

#Memory Management
#-----------------
#Controls memory allocation and cleanup.
gc()

#Promises
#--------
#Arguments are stored as promises until needed.
f <- function(x) { x }
f(30)

#Using Variables Safely
##Use meaningful names
##Avoid <<- unless necessary
##Clean environment (rm(list=ls()))
##Use exists() before access

#Common Mistakes
##Using variable before assignment -WRONG
##Overwriting built-in functions  - WRONG
mean <- 5
mean(c(1,2,3))   # ERROR

#Key Takeaways
##Variables store values
##R uses dynamic typing
##Scope matters (global vs local)
##Variables can be reassigned
##Use clear naming and best practices

#Quiz:
#=====

#Assignment:
#===========
#ASSIGNMENTS: VARIABLES IN R
#-----------------------------
#ASSIGNMENT 1: Basic Variable Creation
#Q1
#Create a variable x and assign value 10. Print it.

#Q2
#Create two variables a = 5, b = 3.
#Create a third variable c as the sum of a and b.

#Q3
#Assign a character value "R Programming" to a variable and print its class.

#Q4
#Assign TRUE to a variable and convert it to numeric.

#ASSIGNMENT 2: Variable Reassignment & Dynamic Typing
#Q5
#x <- 10
#x <- x + 5
#x
#Predict the output.

#Q6
#x <- 100
x <- "Hundred"
class(x)


#What happens to the data type?
# Q7
#x <- 5
#x <- TRUE
#x <- "Done"
#x

#What is stored in x finally?
#ASSIGNMENT 3: Variable Naming Rules
#Q8

#Which of the following are valid variable names? Explain why.
#my_var
#.myVar
#2value
#value_2
#my-value

#Q9
#Try assigning a value to a reserved word. What happens?
#if <- 10

#ASSIGNMENT 4: Checking Variable Properties
-------------------------------------------
  #Q10
  #Create a variable and check:
  class()
typeof()
str()

#Q11
x <- 10L
class(x)
typeof(x)
#Explain the difference.

#ASSIGNMENT 5: Variables and Expressions
#---------------------------------------
#Q12
a <- 4
b <- 2
c <- a + b * 3
c
#Explain how operator precedence affects the result.

#Q13
#Rewrite Q12 using parentheses to change the result.

#ASSIGNMENT 6: Variable Scope (Very Important)
#---------------------------------------------
#Q14
x <- 10
f <- function() {
  x <- 5
  x
}
f()
x
#Explain both outputs.

#Q15
x <- 1
f <- function() {
  x <<- x + 1
}
f()
x
#What changed and why?

#ASSIGNMENT 7: Variables in Loops
#Q16
sum <- 0
for (i in 1:5) {
  sum <- sum + i
}
sum
#Explain how the variable changes in each iteration.

#Q17
#What happens if sum is not initialized before the loop?

#ASSIGNMENT 8: Variables with Vectors & Objects
#Q18
x <- c(1, 2, 3)
y <- x
y[1] <- 100
x

#Why does x not change?
#Q19
#Create a vector variable and calculate:
Mean
Maximum
Length

#ASSIGNMENT 9: Variable Existence & Removal
-------------------------------------------
  #Q20
  x <- 10
exists("x")
rm(x)
exists("x")

#Explain the output.
Q21
#Remove all variables from the environment using one command.

#ASSIGNMENT 10: Common Variable Mistakes
#Q22
mean <- 5
mean(c(1,2,3))

#What is the issue? How do you fix it?
#Q23
x <- 10
y <- x
rm(x)
y
#Why does y still exist?

#ASSIGNMENT 11: Tricky / Interview-Level
#Q24
x <- 5
y <- x <- 10
x
y
#Explain assignment associativity.

#Q25
x <- c(1,2,3)
for (x in 5:7) {
  print(x)
}
x
#What is the final value of x and why?

#ASSIGNMENT 12: Real-World Style
#Q26
#Create variables:
weight (kg)
height (meters)
#Calculate BMI using variables.

#Q27
#Create variables to store:
#Subject ID
#Visit number
#Lab value
#Create a formatted string like:
"SUBJ_01 | VISIT_2 | LAB=120"

#OPTIONAL WRITING TASKS
#Q28
#Write 3 best practices for naming variables in R.

#Q29
#Explain the difference between local and global variables in your own words.

#Q30
#Explain why <<- should be used carefully

#Resources:
#=========
