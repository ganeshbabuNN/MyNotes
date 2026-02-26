#Introduction
#Anotomy of functions
#Function Types
#Returning a result
#Returning a multiple values
#Function overriding and overloading
#assigning function to a variable
#function inside another function
#function as parameter to an other 
#Returning the function
#pass any type
#recursion
#keyword argument
#default arguments
#returning variable number of argument
#... (Variable Arguments)
#Lazy Evaluations
#Function Environment
#Error Handling
#Nested Statements and Scope
#Byte Compilation
#apply Family Function
#Writing a C++ code in R
#Built in Functions
#Quiz
#Assignment
#Resources

#Introduction
#=============
#-A set of statements which are organized together to perform a specific task is known as a function
#-R provides a series of in-built functions, and it allows the user to create their own functions. Functions are used to perform tasks in the modular approach
#-Functions are used to avoid repeating the same task and to reduce complexity
#-To understand and maintain our code, we logically break it into smaller parts using the function. A function should be
#*Written to carry out a specified task.
#*May or may not have arguments
#*Contain a body in which our code is written
#*May or may not return one or more output values

#Anotomy of functions
#===================
#syntax:
func_name <- function(arg_1, arg_2, ...) {  
   #Function body   
}  
#There are four components of function, which are as follows:
#*Function Name
#*Arguments
#*Function Body
#*Return value

##Function Name
#The function name is the actual name of the function. In R, the function is stored as an object with its name.
##Arguments
#In R, an argument is a placeholder. In function, arguments are optional means a function may or may not contain arguments, and these arguments can have default values also. We pass a value to the argument when a function is invoked.
##Function Body
#The function body contains a set of statements which defines what the function does.
##Return value
#It is the last expression in the function body which is to be evaluated.

#example1 :

#design the function without argument
firstprog <- function(){
  paste("Hello world")
}

#invoking the function
firstprog()

#another way of writing functions
firstprog <- function() paste("Hello world")


#Function Types
#==============
#Similar to the other languages, R also has two types of function, i.e. Built-in Function and User-defined Function. 
#In R, there are lots of built-in functions which we can directly call in the program without defining them. R also allows us to create our own functions
 
#Built-in function
#-----------------
#The functions which are already created or defined in the programming framework are known as built-in functions

print(seq(4,20)) #print the seq from 4 to 20
print(mean(10:20)) #finding the mean from 10 to 20
print(sum(10:20)) #sum of the number in range

#*refer the number and string functions in the fundamental modules

#User defined function
#---------------------
#R allows us to create our own function in our program
#A user defines a user-define function to fulfill the requirement of user

#function without an argument
#*--------------------------*
#write a function to find the square of number within that range

new.square <- function(){
  for (i in 1:5){
    print(i^2)
  }
}

new.square() #calling the function

#function with an argument
#*------------------------*
#write a function to find the square of number within that range
new.square <- function(b){
  for (i in 1:b){
    print(i^2)
  }
}

#calling the function with arugment for b
new.square(10)

#Function calling with Argument Values
#*------------------------------------*
#Write program having more arguments with simple arthematic operations
new.result <- function(a,b,c){
  result <- a*b+c
  print(result)
}

#calling the function with position
new.reslt(4,3,5)

#Returning a result
#==================
#The output returned from function.

#function returning the value based on the return function
check <- function(x){
  if(x>0)
    result <- "postive"
  else if (x<0)
    result <- "negative"
  else
    result <-"zero"
  return(result)
}

#calling the function
check(4)

# Now the question is what is the diff between Return and Print .
# The return keyword allows you to actually save the result of the output of a function as a variable. The print() function simply displays the output to you, and also save to the varible

#lets take an example
check <- function(x){
  if(x>0)
    result <- "postive"
  else if (x<0)
    result <- "negative"
  else
    result <-"zero"
  #return(result)
  print(result)
}

#invoking the functions 
#calling the function
check(4)
#val <- check(4)
val <- check(4) #store the value
val

#Returning a multiple values
#=============================
#The output returned from function.
#Can R write multiple arguments?
#using return function use only single object not multiple value
cal <- function(a,b){
  sum=a+b
  sub=a-b
  mul=a*b
  div=a/b
  return(sum,sub,mul,div)
}

#calling the function
cal(4,3)

#Use a list to return multiple values
cal <- function(a,b){
  sum=a+b
  sub=a-b
  mul=a*b
  div=a/b
  my_list <- list(sum,sub,mul,div)
  #my_list <- list(Addition=sum,subtraction=sub,multiplication=mul,division=div)
  return(my_list)
}

#calling the function
cal(4,3)

#Common Mistakes
##Forgetting return() when needed
##Not assigning function to a variable
##Wrong argument order
##Expecting print() to return value.

#Best Practices
##Use meaningful names
##Keep function small
##One responsibility per function

#When to Use vs Not
##When logic repeats
##For single-use quick calculations

#Function overriding and overloading
#===================================
#this functionality generally works in OOps concept, but below is just shown as a awarenes

#Overiding
#---------
#in this the it takes the latest method from the top to down approach
# Same function name with same arguments . generally its work in OOps concept
add <- function(a,b){
  sum=a+b
  paste("add1",sum)
}

add <- function(b,c){
  sum=b+c
  paste("add2",sum)
}

add(4,3)

# Overloading
# -----------
# Same function name with different arguments
add <- function(a,b){
  sum=a+b
  paste("add1",sum)
}

add <- function(a,b,c){  #here the the same function name but different arguments
  sum=a+b+c
  paste("add2",sum)
}

add(4,3) #it always pick the latest function name
#That’s because methods and functions in R are limited to one function signature per name

# Assigning function to a variable
# ================================
a=421 #global variables

#function  that return the value
display <- function(){
  print(a) #accessing the global variables
  a=32
  return(a) #accessing the global variables
}

#invoking the functions
print(a) 
z=display() #assining a function to a variable, then that variable behaves like a functions
z #stored the actual value

# function inside another function
# ================================
#this is same as to enclosed functions.

display <- function(name){
  message<- function(){  #inner functions
    print("hello")
  }
  result = paste(message()," ",name)
  return(result)
}

display("ganesh")

# function as parameter to an other
# ================================
#this is very important concept.
#ex:
display <- function(name) {  #first function
  paste("Hello",name)
  #return("Hello",name) #not permitted in R
}

name<- function(){ #second functions
  return("ganesh")
}

#calling other function as parameter
display(name())

# returning the function
# =====================

display <- function() {
  message <- function() {
    return("hello")
  }
  return(message()) #returing a function to caller of the functions
}

fun <-display()
fun

# Passing Any Type
# =============
# -pass any type to a functions

## ex1
foo <- function(a, b, c){
  a + b - c ## does something
}
foo(a=1, b=2, c=5)  #names argument
## passing a list
arg.list <- list(b=2, c=5) #following the above one
arg.list
#In R, do.call() is a function that allows you to execute another function by providing its arguments as a list
do.call(foo, c(list(a=1), arg.list))

#ex2
foo2 <- function(b, c){
  b + c ## also some function
}
foo2(b=2, c=5)  ## repeating list of multiple arguments
arg.list <- list(5,4)
arg.list
do.call(foo2, arg.list)

#does not work in this fashion
display <- function(lst) {
  print(class(lst))
  for(i in lst){
    print(i)
  }
}

aa = list(1,3,4,5,3)
do.call(display,aa)

#use cases
##Combining Multiple Files
master_table <- do.call(rbind, list_of_dfs) # list_of_dfs contains 50 data frames
##Dynamic Function Arguments:Sometimes you don't know which arguments the user wants to use until the code is running
user_settings <- list(na.rm = TRUE) # Arguments change based on user input
data_to_sum <- list(x = c(1, 5, NA, 10)) # Later in the code, you add the data to those settings
final_args <- c(data_to_sum, user_settings)
do.call(sum, final_args) # Run the sum with whatever settings were chosen
#Don't use do.call() if you just have 2 or 3 fixed variables. It makes the code harder to read for beginners.
##Bad: do.call(sum, list(1, 2))
##Good

# recursion
# =========
fact <- function(num){
  factorial = 1
  # check is the number is negative, positive or zero
  if(num < 0) {
    print("Sorry, factorial does not exist for negative numbers")
  } else if(num == 0) {
    print("The factorial of 0 is 1")
  } else {
    for(i in 1:num) {
      factorial = factorial * i
    }
    print(paste("The factorial of", num ,"is",factorial))
  }
}

fact(4)

#using the factorial function instead of above custom functions
factorial(4)

# Named argument(keyword)
# ================
# -changing the argument values based on the named assignment

average <- function(a=20,b=40){
  print(a)
  print(b)
  return(a+b/2)
}

average(10,20)  #normal call type
average(a=30,b=20)
average(b=22,a=23)#interchanging the keyword argument

# default arguments
# =================
average <- function(a=20,b=40){
  print(a)
  print(b)
  return(a+b/2)
}

average() 
average(b=43) #here i am not assigning the value of a

# Returning variable number of argument
# =====================================
#a is vector
sum <- function(a){
  return(a*5)
}

do.call(sum,list(c(3,3,2)))

#... (Variable Arguments)
#------------------------
#Allows multiple unspecified arguments.
#in python there are *args positional arguments as a tuple and **kwargs keyword arguments as a dictionary.
#in R , both can be done via In R, this is known as the ellipsis or three-dots argument or variable arguments: ....

#normally
add_all<-function(a,b,c){
  return (a+b)
}
add_all(3,4,5)

add_all <-function(...){
  return (sum(...))
}
add_all(3,4,5)

#another way getting the list of values.
#Before going to this understand the list and unlist
a<-list(3,2,3,3,4,4)
typeof(a)
b<-unlist(a)
typeof(b)
b
sum(b)

#3 dot arguments
mysum <-function(...){
  arg_list<-list(...) #get the argument convert to list
  num <- unlist(arg_list) #conver the list into numeric vector
  return (sum(num))
}
mysum(3,4,5) # with three agruments
mysum(3,4,5,4,5,6,7,8,9,6) #with many arguments
sum(3,4,5)

#Real-World
##Flexible summary functions.

#Mistake
##Not handling ... properly.

#Lazy Evaluation
#---------------
#Arguments evaluated only when used.
f <- function(x, y) {
  x
}
f(10, stop("Error"))
#Useful in advanced programming.

#Anonymous Functions
#===================
#No name of the function name
lapply(1:5,function(x) x^2)

#Real-World
df$BMI <- sapply(df$Weight, function(w) w / 1.75^2)

#Function Environment
#====================
#Important for package development.
#assume if you want to check the function is available in your enviornment.
environment(add_all)

find("sum") #If it says ".GlobalEnv", you are using your custom version
find("sum")#If it says "package:base", you are using the built-in R version.
rm("sum") #remove from the environment

#Error Handling
#==============
# if you want to handle b==0 to give some message to user.
foo <- function(a,b){
  if(b==0){stop("cannot divide by zero")}
  result = a*b
  return(result)
}

x <- foo(3,0)
x
compiler::cmpfun(foo)

#Parallel Functions
#=================
parallel::mclapply(1:10, sqrt)
para
#Used for:
##Large datasets
##Simulations
##Clinical trial data

#Nested Statements and Scope
#===========================
#Now that we have gone over writing our own functions, 
#it's important to understand how R deals with the variable names you assign. 
#When you create a variable name in R the name is stored in a name-space. Variable names also have a scope, 
##the scope determines the visibility of that variable name to other parts of your code.

#Scope controls where variables are accessible.
# In simple terms, the idea of scope can be described by 3 general rules:
#1)Name assignments will create or change local names by default.
#2)Name references search (at most) four scopes(LEGB), these are:
# *local
# *enclosing functions
# *global
# *built-in
#3)Names declared in global and nonlocal statements map assigned names to enclosing module and function scopes.
 
#LEGB
#----
# GLOBAL SCOPE
x <- "I am Global"
pi <- 100  # Overriding the built-in pi in the Global Scope

outer_func <- function() {
    x <- "I am Enclosing"
  inner_func <- function() {
    # LOCAL SCOPE
    # 1) If we assign here, it stays here
    local_val <- "I am Local"
    # 2) Let's see which 'x' it finds
    print(x) 
    #want to update the global vaue
    #x <<- "I am DONE"
    # 3) Let's see which 'pi' it finds
    print(pi)
  }
  inner_func()
}

#calling
outer_func()
#how to access the global variable
print(x)
#how to update the update the global variable in the local?>

#Whats happening inside.
#For x: inner_func looks locally (nothing), then looks at its parent outer_func. 
##It finds "I am Enclosing" and stops. It never reaches the Global "I am Global".
#For pi: It looks locally (nothing), then enclosing (nothing), then Global. 
##It finds 100 and stops. It never reaches the built-in 3.14.

#Real-World Issue
##Accidentally modifying global clinical dataset.

#Best Practice
##Never rely on global variables inside function.

#Writing a C++ code in R
#=======================
#Rcpp is an R package that allows you to write C++ code inside R and call it like a normal R function.
#It is mainly used for:
##Speed improvement
##Heavy loops
##Large data processing
##Complex numerical computations

#How It Actually Works
#1.C++ code compiled into shared library (.dll / .so)
#2.R dynamically loads it
#3.R objects converted to C++ types
#4.Fast execution
#5.Results converted back to R objects

#Install and Load Rcpp
#--------------------
install.packages("Rcpp")
library(Rcpp)

#Write Your First Rcpp Function
#------------------------------
#The simplest way is using cppFunction().
#Ex.Square a Number
library(Rcpp)

cppFunction('
  int square(int x) {
    return x * x;
  }
')
#Now call it like normal R function:
square(5)
#Ex Loop Example (Performance Benefit)
##Normal R version
sum_r <- function(n) {
  total <- 0
  for(i in 1:n) {
    total <- total + i
  }
  return(total)
}

##Rcpp version
cppFunction('
  double sum_cpp(int n) {
    double total = 0;
    for(int i = 1; i <= n; i++) {
      total += i;
    }
    return total;
  }
')

sum_cpp(1000000) #This will be significantly faster for large n.

#Using R Vectors in Rcpp
#-----------------------
cppFunction('
  double vector_sum(NumericVector x) {
    int n = x.size();
    double total = 0;
    for(int i = 0; i < n; i++) {
      total += x[i];
    }
    return total;
  }
')

vector_sum(c(1,2,3,4,5))


#Multiple Return Values
#----------------------
cppFunction('
  List stats_cpp(NumericVector x) {
    int n = x.size();
    double total = 0;

    for(int i = 0; i < n; i++) {
      total += x[i];
    }

    double mean = total / n;

    return List::create(
      Named("sum") = total,
      Named("mean") = mean
    );
  }
')

stats_cpp(c(10,20,30))

#Full C++ File Method (Advanced)
#-------------------------------
#For larger projects:
#Create file mycode.cpp
#Add: 

#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double multiply_cpp(double x, double y) {
  return x * y;
}

#Compile inside R:
Rcpp::sourceCpp("mycode.cpp")
#Now you can call:
multiply_cpp(10, 20)

#Important Data Type Mapping
#RType --> RcppType
#numeric --> NumericVector
#integer --> IntegerVector
#logical -->LogicalVector
#character --> characterVector
#list --> list
#matrix --> NumericMatrixix   |

#When Should You Use Rcpp
#------------------------
#Heavy loops
#Large datasets
#Simulations
#Bootstrapping
#Monte Carlo
#Simple vectorized R code (R is already optimized) (do not use)

#Performance Testing Examp
#--------------------------
system.time(sum_r(1e7))
system.time(sum_cpp(1e7))

#Byte Compilation
#================
#Byte compilation converts R code into an intermediate bytecode format before execution.
#Instead of interpreting R code line-by-line each time, R executes pre-compiled bytecode.

#R code -> Bytecode -> Execution
#instead of
#R code -> Interpret -> Execute (every time)

#Purpose
##Improve performance
##Reduce interpretation overhead
##Speed up repeated function calls
##Optimize loops and recursive functions

library(compiler)
#Compile a Single Function
slow_function <- function(x) {
  total <- 0
  for(i in 1:x) {
    total <- total + i
  }
  total
}
compiled_function <- cmpfun(slow_function) #cmpfun() It converts the function into bytecode form.
compiled_function(1e6) #ie6=1,000,000(1M),ie3=1000 like that is a scientific notation 

#Compile Entire Script if you have
compiler::compile("myscript.R")
#Enable JIT (Just-In-Time) Compilation
enableJIT(3)
#0->No compilation
#1->Compile large functions
#2->Compile small functions
#3->Compile everything

#Without Compilation
system.time(slow_function(10e7))
#With Compilation
system.time(compiled_function(5e7))
#output parameter
#user->CPU time used by your R code
#system->CPU time used by operating system
#elapsed->Real-world wall clock time

#When optimizing performance:
#If user is high
##Improve algorithm
##Vectorize
##Use Rcpp

#If system is high
##Reduce file I/O
##Use data.table
##Increase memory

#If elapsed is high but CPU low
##Network bottleneck
##Disk bottleneck

#for advanced explore microbenchmark framework
library(microbenchmark)
microbenchmark(slow_function(10e7), times = 10)

#apply Family Function
#=====================
#Intro
#------
#The R Apply Family is a group of functions used to apply a function to elements of a vector, list, or matrix.
#It is considered legacy functionality for modern R development.
#It is not recommended for writing new R code.
#The purrr package is recommended instead for looping operations in R.
#purrr provides:
##Consistent and cleaner syntax
##Better readability
#Easier handling of multiple inputs and outputs
#purrr functions are optimized for modern computing environments.
#They are generally faster and more efficient than the Apply Family functions.
#While the Apply Family still works, purrr is preferred for new R projects.
#The Apply Functions as Alternatives to Loops

#apply() family
#--------------
#The apply() family belongs to the base R package.
#It is used to repeatedly manipulate slices of data from:
##Matrices
##Arrays
##Lists
##Dataframes

#These functions help avoid writing explicit loops.
#They apply a specified function to an input object (list, matrix, or array).
#The function used inside apply-family functions can be:
##An aggregating function (for example, mean(), sum()) that returns a scalar.
##A transforming or sub-setting function.
##A vectorized function that returns more complex structures (vectors, lists, matrices, arrays).
#Apply-family functions allow powerful operations with very few lines of code.
#The main functions in this family are:apply(),lapply(),sapply(),vapply(),tapply(),mapply()
#Choosing which function to use depends on:
##The structure of the input data
##The format of the output required

#Data required
dm <- read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/dm.csv")
ae <- read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")
lb <- read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/lb.csv")
vs <- read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/vs.csv")

#apply()
#-------
#apply() is the core function of the apply family.
#It operates mainly on arrays (commonly 2D arrays, i.e., matrices).
##Used on matrix or data frame (row-wise or column-wise operations)
##Perform row-wise or column-wise operations on matrices/data frames
#Basic syntax:
##  apply(X, MARGIN, FUN, ...)
#Arguments:
##  X -> An array or a matrix
##  MARGIN -> Defines the direction of application:
##  MARGIN = 1 -> Apply function across rows
##  MARGIN = 2 -> Apply function across columns
##  MARGIN = c(1,2) -> Apply function across both rows and columns
##  FUN -> The function to apply (can be built-in or user-defined)
##  FUN can be any valid R function, including a User Defined Function (UDF).
#Visual examples (pictures and code) help beginners better understand how apply() works internally.
#Ex:Suppose we have lab numeric values in LB:,Calculates column-wise mean lab values
lb_matrix <- as.matrix(lb[, c("LBSTRESN")])
apply(lb_matrix, 2, mean, na.rm = TRUE)
lb_matrix <- as.matrix(lb[, c("LBORNRLO","LBORNRHI","LBSTRESN")])
apply(lb_matrix, 1, mean, na.rm = TRUE)

#lapply()
#-------
#lapply() applies a given function to each element of a list.
#The output is always a list.
#Apply function to each element of a list and return a list.Returns number of records in each domain
#The syntax of lapply() is similar to apply().
#Unlike apply(), it can be used on:
##Lists
##Dataframes
##Vectors
#The result has the same number of elements as the input object.
#The “l” in lapply() stands for “list”, indicating that it returns a list.
#Ex:returns number of records in each domain
domains <- list(DM = dm, AE = ae, LB = lb)
lapply(domains, nrow)

#sapply()
#-------
#sapply() works similarly to lapply().
#It attempts to simplify the output to the simplest possible data structure.
#sapply() is essentially a wrapper around lapply().
#Simplified version of lapply (returns vector/matrix if possible)
#Apply function to list and simplify result to vector/matrix.
#If possible, it converts the result into:
##A vector
##A matrix
##Or an array
#lapply() would return a list in this case.
#sapply() simplifies the result (for example, into a vector).
#Setting simplify = FALSE in sapply() forces it to return a list.
#Functions like unlist() can convert list output into a vector.
#Best practice:
##Use each function in its natural format.
##Avoid unnecessary conversions unless strictly required.
#Ex:Count unique subjects in each domain:Returns a numeric vector
sapply(domains, function(x) length(unique(x$USUBJID)))
#Note:
##lapply()-Applies a function to each element of a list and Always returns a list
##sapply() tries to simplify the output automatically.If possible, it converts: List -> Vector,List -> Matrix
##sapply() simplifies only when and Each result has same length,Same data type

#vapply()
#-------
#Safer version of sapply (you define expected output type)
#Type-safe version of sapply with predefined output structure.
#Ensures output is numeric length 1
vapply(domains, 
       function(x) length(unique(x$USUBJID)), 
       numeric(1))

#tapply()
#-------
#Group-wise operations
#Apply function over subsets defined by a grouping factor.
#ex:Calculate mean lab value by treatment arm,Mean lab value per treatment group
combined_data <- merge(lb, dm[, c("USUBJID", "ARM")], by = "USUBJID")
tapply(combined_data$LBSTRESN, combined_data$ARM, mean, na.rm = TRUE)

#mapply()
#-------
#mapply() stands for “multivariate apply”.
#Apply function to multiple parallel vectors element-wise.
#It is used to apply a function to multiple inputs at the same time.
#It helps vectorize functions that normally do not accept vector arguments.
#In simple terms:
##mapply() applies a function to multiple lists or multiple vectors simultaneously.
#It is useful when a function needs to process corresponding elements from multiple inputs together.

#Ex:Suppose you want to calculate BMI:Computes BMI per subject
length(vs_HEIGHT)
length(vs_WEIGHT)
vs_HEIGHT<-vs[which(vs$VSTESTCD=='HEIGHT'),"VSSTRESN"]
vs_WEIGHT<-vs[which(vs$VSTESTCD=='WEIGHT'),"VSSTRESN"]
mapply(function(w, h) w / (h/100)^2, 
       vs_HEIGHT, 
       vs_WEIGHT)

#Ref:
#https://www.datacamp.com/tutorial/r-tutorial-apply-family
  
# Built in Functions
# ==================
# most of the built-in function are discussion in the numbers and strings chapter.

#all() and any()
#---------------
#all() and any() are built-in functions in R that allow us to conveniently check for boo-lean matching in an alterable. all() will return True if all elements in an iterable are True. It is the same as this function code:
x <- 1:10
x
any(x < 8)
any(x > 11) 

all(x < 8)
all(x > 8)
all(x > 11) 

# Quiz:
# =====
# 1.What is the difference between return the value and printing the value?
# 2.what is the difference between print and paste functions

# Assignment:
# ===========
# a)Define a function myfunc that takes in a name and prints "Hello Name" Note: Do not use f-string
# b)Define a function that takes a boolean value (True or False). if True 'Hello' and if False , return 'Goodbye'
# c)Define a functions that takes three arguments x, y , z (any value as boolean literals), if z is true , return x. if z if false, return y.
# d)Define a functions that takes one argument and returns True if passed in value is even, False if it is not.
# e)Define a functions that takes two argument and returns True if the first value is greater that the second ,False if it is less then.
# f)Write a function that computes the volume of a sphere given its radius
# g)Write a function that checks whether a number is in a given range (inclusive of high and low)
# h)Write a  function that accepts a string and calculates the number of upper case letters and lower case letters.
# 	Sample String : 'Hello Mr. Rogers, how are you this fine Tuesday?'
# 	Expected Output : 
# 	No. of Upper case characters : 4
# 	No. of Lower case Characters : 33
# i)Write a  function that takes a list and returns a new list with unique elements of the first list.
# 	Sample List : [1,1,1,1,2,2,3,3,3,3,4,5]
# 	Unique List : [1, 2, 3, 4, 5]
# j)Write a  function to multiply all the numbers in a list.
# 	Sample List : [1, 2, 3, -4]
# 	Expected Output : -24
# k)Write a  function that checks whether a word or phrase is palindrome or not
# Note: A palindrome is word, phrase, or sequence that reads the same backward as forward, 
# e.g., madam,kayak,racecar, or a phrase "nurses run". Hint: 
# You may want to check out the .replace() method in a string to help out with dealing with spaces.
# Also google search how to reverse a string in R, there are some clever ways to do it with slicing notation
# L)Write a R function to check whether a string is pangram or not. (Assume the string passed in does not have any punctuation)
# 	Note : Pangrams are words or sentences containing every letter of the alphabet at least once.
# 	For example : "The quick brown fox jumps over the lazy dog"
# 	Hint: You may want to use .replace() method to get rid of spaces.
# 	Hint: Look at the string module(https://stackoverflow.com/questions/16060899/alphabet-range-in-python)
# 	Hint: In case you want to use set comparisons(https://medium.com/better-programming/a-visual-guide-to-set-comparisons-in-python-6ab7edb9ec41Z)
# i)Write a funciton that takes arbitrary number of arguments and returns a list contianing only those arguments that are even.
# 	ex: myfun(45,44,3,4,6) --> [44,4,6]
# j)Write a function that takes in a string and returns a matching string where every even letter is uppercase and every odd letter is lower .
# 	ex: myfun('ganeshbabu') --. 'GaNeShBaBu'

--------------------
# 1)create a function and prints only the even values
# 2)create a function which returns the even values and stored in a variable
# 3)create a functions which returns the list of even numbers
# 4)create a functions which returns the list of even numbers or odd numbers
# 5)Create a function where The employee of the month function will return both the name and number of hours worked for the top performer (judged by number of hours worked).
# 	work_hours = [('Abby',100),('Billy',400),('Cassie',800)]
# 6)Write a function that returns the lesser of two given numbers if both numbers are even, but returns the greater if one or both numbers are odd.
# 	lesser_of_two_evens(2,4) --> 2
# 	lesser_of_two_evens(2,5) --> 5
# 7)Write a function takes a two-word string and returns True if both words begin with same letter
# 	lettercheck("Dalai Lama") --> False
# 	lettercheck("Ganjan Gang") --> True
# 8)Given two integers, return True if the sum of the integers is 20 or if one of the integers is 20. If not, return False
# 	makes_twenty(12,8) --> True
# 	makes_twenty(2,3) --> False
# 9)Write a function that capitalizes the first and fourth letters of a name
# 	old_macdonald('macdonald') --> MacDonald
# 	Note: `'macdonald'.capitalize()` returns `'Macdonald'`
# 10)Write a function and Given a sentence, return a sentence with the words reversed
# 	master_yoda('I am home') --> 'home am I'
# 	master_yoda('We are ready') --> 'ready are We'
# 11)Write a function and Given an integer n, return True if n is within 10 of either 100 or 200
# 	NOTE: abs(num) returns the absolute value of a number
# 	almost_there(104) --> True
# 	almost_there(150) --> False
# 12)Write a function and Given a list of ints, return True if the array contains a 3 next to a 3 somewhere.
# 	has_33([1, 3, 3]) → True
# 	has_33([1, 3, 1, 3]) → False
# 13)Write a function and Given a string, return a string where for every character in the original there are three characters
# 	paper_doll('Hello') --> 'HHHeeellllllooo'
# 	paper_doll('Mississippi') --> 'MMMiiissssssiiippppppiii'
# 14)Write a function and Given three integers between 1 and 11, if their sum is less than or equal to 21, return their sum. If their sum exceeds 21 and there's an eleven, reduce the total sum by 10. Finally, if the sum (even after adjustment) exceeds 21, return 'BUST
# 	blackjack(5,6,7) --> 18
# 	blackjack(9,9,9) --> 'BUST'
# 	blackjack(9,9,11) --> 19
# 15)Write a function and Return the sum of the numbers in the array, except ignore sections of numbers starting with a 6 and extending to the next 9 (every 6 will be followed by at least one 9). Return 0 for no numbers.
# 	summer_69([1, 3, 5]) --> 9
# 	summer_69([4, 5, 6, 7, 8, 9]) --> 9
# 	summer_69([2, 1, 6, 9, 11]) --> 14
# 16)Write a function that takes in a list of integers and returns True if it contains 007 in order
# 	spy_game([1,0,2,4,0,5,7]) --> True
# 	spy_game([1,7,2,0,4,5,0]) --> False
# 17)Write a function that returns the number of prime numbers that exist up to and including a given number
# 	count_primes(100) --> 25  By convention, 0 and 1 are not prime.
# 18)Write a function that takes in a single letter, and returns a 5x5 representation of that letter
# 	print_big('a')
# 
# 	out:   *  
#  	      * *
# 	     *****
# 	     *   *
# 	     *   *
# HINT: Consider making a dictionary of possible patterns, and mapping the alphabet to specific 5-line combinations of patterns.
# For purposes of this exercise, it's ok if your dictionary stops at "E".


# Resources
# =========
#https://www.oreilly.com/library/view/the-art-of/9781593273842/ch02s05.html
#https://www.datamentor.io/r-programming/return-function
#https://www.dataquest.io/blog/write-functions-in-r