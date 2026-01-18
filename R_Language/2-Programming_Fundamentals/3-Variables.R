#Intro 
###################Basic #################
#Variable Assignment in R
#Variable Types (Data Stored)
#Dynamic Typing in R
#Rules and naming conventions of variable
#Variable Reassignment
###################Advanced ##############
#Finding variables
#Deleting/removing Variables
#Variable Scope
#Variable Lifetime
#Checking Variables
#Type and Structure
#Variables in Expressions
#Variables with Vectors & Objects
#Variables as References (Copy-On-Modify)
#Reserved Words (Cannot Be Variables)
#Variables Inside Loops
#Shadowing Variables
#Using Variables Safely
#Common Mistakes
#Real-World Example
#Key Takeaways
#Quiz
#Assignment
#Resources

#Intro
#=====
#A variable is a named container that stores a value in memory so it can be reused, modified, and passed in a program or
x <-10
#x -->variable name
#<- --> Left assignment operator
#10 --> value stored

#A variable provides us with named storage that our programs can manipulate
#A variable in R can store an atomic vector, group of atomic vectors or a combination of many Robjects

#Variable Assignment in R
#========================
#Assignment Operators
#Operator	Meaning	Example
#<-	: Standard assignment	
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

#Variable Types (Data Stored)
#=========================
#-In R, a variable itself is not declared of any data type, rather it gets the data type of the R - object assigned to it
#-So R is called a dynamically typed language, which means that we can change a variable’s data type of the same variable again and again when using it in a program

a <- 2 #numeric
b <- 2L #integer
c <-"ganesh" #character
d <- TRUE #Logical
e <- 1+2i # complex
#More data types are explain in data type chapter.

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

#Rules and naming conventions of variable
#========================================
#Rules
#-----
#*Has letters, numbers, dot and underscore 
var_name2.	
#*Does not have the character '%'. Only dot(.) and underscore allowed.
#var_name%	
#*Does not start with a number
#2var_name	
#*Can start with a dot(.) but the dot(.)should not be followed by a number.
#.var_name,
#var.name
#*The starting dot is followed by a number making it invalid.
#.2var_name	
#*Starts with _ which is not valid
#_var_name

#conventions
-----------
  #*this are suggestion ways
  myVariable	#camel case
myVaraible_  #for tempervory case


#Variable Reassignment
#=====================
#Variables can be updated or overwritten.
count <- 5
count <- count + 1
count

#Finding variables
#==================
print(ls()) #To know all the variables currently available in the workspace we use the ls() function
print(ls(pattern = "var")) ## List the variables starting with the pattern "var".
print(ls(all.name = TRUE)) #The variables starting with dot(.) are hidden, they can be listed using "all.names = TRUE" argument to ls() function.

#Deleting/removing Variables
#===========================
rm(var.3) #Variables can be deleted by using the rm() function.
print(var.3)
rm(x)
rm(y, z)#more then one variable
rm(list = ls()) #All the variables can be deleted by using the rm() and ls() function together.
rm(list=ls()) ### to remove all the variables

#Variable Scope
#==============
#In programming languages, variables need to be defined before using them
#These variables can only be accessed in their area where they are defined, this is called scope.

#Type of scope
#1)Global Variables
#2)Local Variables

#Global Variables
#-------------
#*As the name suggests, Global Variables can be accessed from any part of the program.
#*They are available throughout the lifetime of a program.
#*They are declared anywhere in the program outside all of the functions or blocks.
#*Declaring global variables: Global variables are usually declared outside of all of the functions and blocks. They can be accessed from any portion of the program.

a <- 7 # global variables

#creating a functions
display <- function(){
  print(a) #accessing the global variable
}

display() #calling the function

#changing the value of global variable
a <- 10
print(a)

#2)Local Varaibles
#------------------
#*Variables defined within a function or block are said to be local to those functions.
#*Local variables do not exist outside the block in which they are declared, i.e. they can not be accessed or used outside that block.
#*Declaring local variables: Local variables are declared inside a block.

a <- 7

#creating a functions
display <- function(){
  print(a) #accessing the global variable
  b <- 6 #assing a local variable
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
#Allows modifying a global variable from inside a function.
x <- 5
f <- function() {
  x <<- x + 1
}
f()
x #Use sparingly

#Variable Lifetime
#=================
rm(x)

#Checking Variables
#=================
#exists
exists("x")

#Type and Structure of variable
#==============================
class(x)
typeof(x)
str(x)

#typeof() function in R Language is used to return the types of data used as the arguments.
### the type represents how the object is stored in the memory
typeof(a)
typeof(b)
typeof(c)
typeof(d)
typeof(e)

#class() function in R Language is used to return the class of data used as the arguments.
#the class represents the abstract type of the object
class(a)
class(b)
class(c)
class(d)
class(e)

#str function in R language return struture of the variable
str(a)
str(b)
str(c)
str(d)
str(e)
#this will be discussed in details in data type chapter.

#Variables in Expressions
#=========================
a <- 5
b <- 3
c <- a + b * 2
#b * 2 evaluated first.

#Variables with Vectors & Objects
#================================
scores <- c(70, 80, 90)
names <- c("A", "B", "C")

#Variables as References (Copy-On-Modify)
#=========================================
#R uses copy-on-modify semantics.
x <- c(1, 2, 3)
y <- x
y[1] <- 100
x

#Reserved Words (Cannot Be Variables)
#=====================================
#if, else, for, while, function, TRUE, FALSE, NULL

#Variables Inside Loops
#======================
sum <- 0
for (i in 1:5) {
  sum <- sum + i
}
sum

#Shadowing Variables
#====================
#Local variable hides global one.
x <- 10

f <- function() {
  x <- 5
  x
}
f()
x

#Using Variables Safely
#======================
#Use meaningful names
#Avoid <<- unless necessary
#Clean environment (rm(list=ls()))
#Use exists() before access

#Common Mistakes
#================
#Using variable before assignment -WRONG
#Overwriting built-in functions  - WRONG

mean <- 5
mean(c(1,2,3))   # ERROR

#Real-World Example
#===================
weight <- 70
height <- 1.75
bmi <- weight / (height^2)
bmi

#Key Takeaways
#==============
#Variables store values
# R uses dynamic typing
# Scope matters (global vs local)
# Variables can be reassigned
# Use clear naming and best practices

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