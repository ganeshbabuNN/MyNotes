#Introduction
#Type of statments
##Selection(conditional) statements 
##Iteration statements
##Transfer statements
#Other statements
#Quiz
#Assignment
#Resources

#Introduction
#============
#Control flow statements govern the flow (order) of control (execution) in a program during execution. 
#There are three main categories of control flow statements:

##Selection(conditional) statements:
#=================================
#Decision making is the most important aspect of almost all the programming languages. As the name implies, decision making allows us to run a particular block of code for a particular decision. Here, the decisions are made on the validity of the particular conditions. Condition checking is the backbone of decision making.

#If statement
#if else statement
#if..else-if...else statement
#Switch Statement

#if statement
#------------
#The if statement is used to test a specific condition. If the condition is true, a block of code (if-block) will be executed.

#syntax:
#ex:
#if(boolean_expression) {  
#// If the boolean expression is true, then statement(s) will be executed.   
#}  
	
if(TRUE){
  print("it is true")
}


#ex1:program to check even number of not
num=as.integer(readline("enter the number"))
if(num%%2==2){
  print("this is a even number")
}

#ex2:Program to print the largest of the three numbers
a=2
b=3
c=2

if(a>b){
  cat("a is largest")
}

if(b>a){
  cat ("b is largest")
}

if(c>a){
  cat("c is largest")
}

#Common Mistakes
##Using vector instead of single logical value
##Forgetting {}

#Best Practices
##Keep conditions simple
##Use for single decisions only

#When to Use / Avoid
##Use for single checks
##Avoid for vector logic

#if ... else Statement
#--------------------
#The if-else statement is similar to if statement except the fact that, it also provides the block of the code for the false case of the condition to be checked. If the condition provided in the if statement is false, then the else statement will be executed.

#Syntax:
#if(boolean_expression) {  
#   // statement(s) will be executed if the boolean expression is true.  
#} else {  
#// statement(s) will be executed if the boolean expression is false.  
#} 

#Ex1: Program to check your eligibility to vote.
age <- 43
if (age>18){
  cat("your eligable for vote")
}else{
  cat("your not eligable for vote")
}


##ex2:program to check even number of not
num <- 3
if(num%%2==0){
  print("The number is even")
}else{
  print("the nubmer is odd")
}

#Mistakes
##Missing else
##Misaligned braces

#Same as if statements.

#if ... else if ... else statment
--------------------------------
#The elif statement enables us to check multiple conditions and execute the specific block of statements depending upon the true condition among them. We can have any number of elif statements in our program depending upon our need. However, using elif is optional.

Syntax:
# if(condition1) {  
#    // This block executes when the condition1 is true.  
# } else if( condition2) {  
#    // This block executes when the condition2 is true.  
# } else if( condition3) {  
#    // This block executes when the condition3 is true.  
# } else {  
#    // This block executes when none of the above condition is true.   
# }
	
#ex1:Program to check which number is equal to 10 or 50 or 100
num <- 20
if (num==10){
  print("Number is equal to 10")
}else if(num==50){
  print("number is equal to 50")
}else if(num==100){
  print("numbe ris equal to 100")
}else{
  print("number is not equal to either 10 or 50 or 100")
}
	
#ex:Program to check the Grade of the student marks
#A --> greater 85 and less or equal to 100
#B+ --> greater 60 and less or equal to 85
#B --> greater 40 and less or equal to 60
#C --> greater 30 and less or equal to 40
#Fail --> < 30

marks = 40
if (marks >85 & marks<=100){
  print("Grade A")
}else if(marks >60 & marks<=85){
  print("Grade B+")
}else if(marks >40 & marks<=60){
  print("Grade B")
}else if(marks>30 & marks<=40){
  print("Grade C")
}else{
  print("Fail")
}

#Real-World Example
#Risk classification in credit scoring.

#Best Practice
#Order conditions from most specific to least

#ifelse statement 
#---------------
#Vectorized conditional logic

x<- c(1,3,4,5,6,7,4,3,NA)
ifelse(x > 0, "Positive", "Negative")

#Real-World
##Flagging outliers in datasets.

#Mistake
##Using ifelse() with complex objects

#Handling NA in Conditions
#-------------------------
x<-NA
if (is.na(x)) {
  x <- 0
  print(x)
}

#if (x == NA)  # WRONG

#Switch Statment
#---------------
#A switch statement is a selection control mechanism that allows the value of an expression to change the control flow of program execution via map and search.
#There are basically two ways in which one of the cases is selected:
##1)If the cases are values like a character vector, and the expression is evaluated to a number than the expression's result is used as an index to select the case.
##2)When the cases have both case value and output value like ["case_1"="value1"], then the expression value is matched against case values. If there is a match with the case, the corresponding value is the output

#syntax:
#	switch(expression, case1, case2, case3....)  

#ex1
y=3
x <- switch(
  y, 
  "ganesh",
  "babu",
  "Veer",
  "gyn"
)
x
print(x) #prints by index

#ex2
x=1
y=2
a<- switch(
  paste(x,y,sep=""),
  "11"="Hello 11",
  "12"="Hello 12",
  "22"="Hello 22",
  "42"="Hello 42",
  "42"="Hello 42",
  "66"="Hello 66",
)
print(a)

#ex3
a="14"
x=1
y=2

m<-switch(
  a,
  "12"=cat("additions",x+y),
  "13"=cat("Subractions",x-y),
  "14"=cat("Multiplications",x*y),
  "15"=cat("Division",x/y)
)

print(m)

#Real-World
##Menu selection, configuration logic.


##Iteration statements:
#=====================
#The flow of the programs written in any programming language is sequential by default. Sometimes we may need to alter the flow of the program. The execution of a specific code may need to be repeated several numbers of times.
#For Loop
#While Loop
#Repeat loop

#all the Logical operators (&&, ||, !) and Comparison operators (==, !=, <, >, <=, >=) are used to check the conditions.

#1)For loop
#----------
#The for loop is used in the case where we need to execute some part of the code until the given condition is satisfied. 
#The for loop is also called as a per-tested loop. It is better to use for loop if the number of iteration is known in advance.
#A loop that iterates over a predefined sequence (vector, list, range).

#Syntax:
#for (initialization_Statement; test_Expression; update_Statement)  
#{  
#// statements inside the body of the loop   
#}  		

#iterate a vector
for(i in 1:10){
  print("helloo")
}

#Ex: Program to iterate the sequences types, list, tuple, dict and sets
#iterate a vector
names <- c("Ganesh","babu","Kumar","Veeresh")
for(i in names){
  print(i)
}

#iterate a list
names <- list("Ganesh","babu","Kumar","Veeresh",12,TRUE,12L)
for(i in names){
  print(i)
}

#iterate a matrix
names <- matrix(c("Ganesh","babu","Kumar","Veeresh"),nrow=2,ncol=2,byrow = TRUE)
for(r in 1:nrow(names))
  for (c in 1:ncol(names))
    print(paste("names[",r,",",c,"]=",names[r,c]))
print(names)

#create a list of three vectors
company<- list(empname=c("ganesh","babu","kumar","jaitely"),
               age=c(12,34,23,45),
               status=TRUE)
for(p in company){
  print(p)
}

#count of no of evens numbers in a vector
x <- c(2,5,3,9,8,11,6,44,43,47,67,95,33,65,12,45,12)  
count=0
for (val in x){
  if(val%%2==0){
    count=count+1
    #print(val)#to display the those number
  }
}
print(count)

#iterate a string
x<-"Ganesh babu"
count=0
for (i in x){
  print(i[count])
  count=count+1
}

#How it works
##The sequence (1:5) is created first
##Loop runs exactly once per element
##Stops automatically

#Real-World Example
files <- c("a.csv", "b.csv", "c.csv")
for (f in files) {
  read.csv(f)
}


#Nested for loop in python
#*-----------------------*
#syntax:
#for <variable_Name1> in <iterable/Sequence>: #outer loop
#for <variable_Name2> in <iterable/Sequence>: #inner loop 
		#statements
	#other statments

#print the tables 
for(i in c(1:10)){
  for (j in c(1:5)){
    print(paste(i,"X",j,"=",i*j))
  }
}

#Common Mistakes
##Using for when iterations are unknown
##Growing objects inside the loop

#Best Practices
##Pre-allocate vectors
##Prefer vectorization or apply() when possible

#When to Use / NOT Use
##Known number of iterations
##Condition-based stopping

#while loop
#-------------
#The while loop is to be used in the scenario where we don't know the number of iterations in advance. 
#The block of statements is executed in the while loop until the condition specified in the while loop is satisfied. 
#It is also called a pre-tested loop.
#A loop that runs as long as a condition is TRUE.

#sytnax:
#while (test_expression) {  
#statement  
#}  

#print the number from 1 to 10
i <- 1
while (i<10){
  print(i)
  i=i+1
}

#print the table for given number
num=3
i=1
while (i<11){
  print(paste(num,"X",i,"=",num*i))
  i=i+1
}

#print using a list
mylist =list("H","yel",3,03,99,'Ganesh')
i=0
while (i<length(mylist)){
  print(mylist)
  i=i+1
}

#How it works
##Condition is checked before each iteration
##If condition is FALSE initially -->loop never runs

#Real-World Example
account_balance =1000
monthly_fee =200
while (account_balance > 0) {
  account_balance <- account_balance - monthly_fee
  print(account_balance)
}

#infinite loop
#If the condition is given in the while loop never becomes false, then the while loop will never terminate, and it turns into the infinite while loop.

mylist =list("H","yel",3,03,99,'Ganesh')
i=0
while (i<length(mylist)){
  print(mylist) 
}

#Common Mistakes
#Forgetting to update condition variable

#Best Practices
##Always modify variables used in condition
##Add safety counters for long loops

#When to Use / NOT Use
##Unknown number of iterations
##When iteration count is fixed

#Repeat Loop
#-----------
#A loop that runs forever unless explicitly stopped using break.

#syntax:
#repeat {   
#    commands   
#    if(condition) {  
#       break  
#    }  
# } 

#using vector
v <- c("Hello","World","bangaluru")
length(v)
cnt <- 1
repeat{
    print(v)
    cnt=cnt+1
    if(cnt ==length(v)){
      break
    }
}

#Example 3: Infinity repeat loop
total <- 0
num<-10
repeat{
  total=total+num
  num=num+1
  cat("sum is =",total,"\n")
}

#Ex 4:repeat loop with next
a<- 1
repeat{
  if(a==10)
    break
  if(a==7){ #skip the 7
    a=a+1
    next
  }
  print(a)
  a=a+1
}

#How it works
##Runs at least once
##Exit condition is checked inside the loop

#Real-World Example
repeat {
  user_input <- readline("Enter value: ")
  if (user_input != "") break
}

#Common Mistakes
##Forgetting break
##No clear exit condition

#Best Practices
##Always place break clearly
##Use only when loop must run at least once

#When to Use / NOT Use
##User input loops, retry logic
##Regular iteration tasks


#Simple Rule to Remember
#----------------------
##for -->“I know how many times”
##while --> “I know the condition”
##repeat --> “I will decide when to stop”

##Transfer statements:
#====================
#1)break
#2)next 

#We can use break, continue, and pass statements in our loops to add additional functionality for various cases. The three statements are defined by:

#break statement
#---------------
#Break Statement - When the break statement is encountered, it brings control out of the loop.
#Breaks out of the current closest enclosing loop.

#break in repeat loop
a <- 1
repeat {
  print("hello")
  if(a>=5)
    break
  a=a+1
}



#break in a for loop
for(i in c(2,4,6,8,10)){
  for(j in c(1,3)){
    if (i==6){
      break
    }
    print(i)
  }
  
}

#break in while loop
a <-1
while (a<10){
  #print(a)
  if(a==5){
    break
  }
  a=a+1
  print(a)
}


#Next statment
#-------------
#-The next statement is used to skip any remaining statements in the loop and continue executing. 
#-In simple words, a next statement is a statement which skips the current iteration of a loop without terminating it

#next in repeat looop
a<-1
repeat{
  if(a==10)
    break
  if(a==5)
    next
  print(a)
  a<-a+1
}


#next in for loop
for(val in c(1:10)){
  if(val==3)
    next
  print(val)
}

#
j<-0
while(j<10){
  if(j==7){
    j=j+1
    next
  }
  cat("the number is=",j,"\n")
  j=j+1
}

#next in while loop
a<-1
while(a<10){
  if(a==5){
    a=a+1
    next
  }
  print(a)
  a=a+1
}
#break and continue statements can appear anywhere inside the loop’s body, but we will usually put them further nested in conjunction with an if statement to perform an action based on some condition.

#Other statements
#================

#Guard Classes
#-------------
#Guard Classes (or more commonly, Guard Clauses) are a design pattern used to handle edge cases,..
#invalid inputs, or "exit conditions" at the very beginning of a function.
#Instead of wrapping your main logic in a giant if-else block, you "guard" ..
#the function by checking for errors early and exiting immediately if something is wrong.

#This style forces the reader to keep track of multiple levels of indentation to find the actual calculation.
#1. The Nested Approach (Harder to read)
calculate_log <- function(x) {
  if (is.numeric(x)) {
    if (x > 0) {
      return(log(x))
    } else {
      stop("x must be positive")
    }
  } else {
    stop("x must be numeric")
  }
}
calculate_log("342")

#2.The Guard Clause Approach (Clean & Flat)
#You check the requirements first. If they aren't met, you throw an error or return a value. 
#This keeps the "happy path" (the main logic) at the lowest level of indentation.
calculate_log <- function(x) {
  # Guard Clauses
  if (!is.numeric(x)) stop("x must be numeric")
  if (x <= 0) stop("x must be positive")
  
  # Main Logic
  return(log(x))
}

#Why Use Guard Clauses in R?
##Readability: It reduces "cyclomatic complexity" (the number of paths through your code).
##Fail Fast: If there’s an issue with your data, you want to know immediately before R starts heavy computations.
##The "Happy Path": Your main code stays on the left margin, making it the star of the show rather than being buried in nested brackets.

#Apply Family
#------------
#def:A group of higher-order functions in R used to apply a function over elements of a data structure without explicit loops.
#Purpose : Replace repetitive loops, Write concise, readable, functional code

#syntax
#apply_family(data, function, ...)

lapply(1:5, sqrt)

#Real-World Example
##Applying validation rules to multiple datasets automatically.

#Common Mistakes
##Expecting consistent output types
##Ignoring simplification behavior

#Best Practices
##Know input and expected output type
##Prefer explicit functions (vapply) in production

#When to Use vs Not Use
##Use for transformations
##Avoid for heavy side-effects

#Scenario: Apply the same check across multiple SDTM domains.
#Use case: Count records per SDTM domain.
domains <- list(DM = DM, AE = AE, LB = LB)
lapply(domains, nrow)


#apply() =====Row / Column operations
##Definition : Applies a function over rows or columns of a matrix or array.
##Purpose :Row-wise or column-wise operations.

#syntax
##apply(X, MARGIN, FUN)
#
m<-matrix(1:6, nrow = 2)
apply(m, 2, sum)
mtcars
apply(mtcars, 1, mean) #row level
apply(mtcars, 2, mean) #column wise

#Real-World Example
##Calculating total sales per store (rows).
#Common Mistakes
##Using on data frames unintentionally
##Losing column types

#Best Practices
##Convert to matrix intentionally
##Use rowSums() when possible

#Use vs Not
##Numeric matrices
##Heterogeneous data frames

#Scenario: Calculate min/max lab value per subject from LB.
#SDTM use: Summary of numeric lab results.
apply(LB[, c("LBSTRESN")], 2, range, na.rm = TRUE)


#lapply() =====Column-wise derivations
#Definition : Applies a function to each element and always returns a list.
#Purpose : Safe, predictable iteration.

#syntax
lapply(X, FUN)

lapply(1:3, function(x) x^2)
mtcars
lapply(mtcars, function(x) mean(x))

#Real-World Example
##Cleaning multiple columns independently.

#Common Mistakes
##Expecting vector output

#Best Practices
##Use as default apply function

#Use vs Not
##General transformations
##When strict output type required

#Scenario: Convert all character variables in DM to uppercase.
#SDTM use: Standardize text variables (SEX, ARM, COUNTRY).
DM[] <- lapply(DM, function(x)
  if (is.character(x)) toupper(x) else x
)
DM[]

#sapply() ====Quick summaries
#Definition :Simplifies lapply() output automatically.
#Purpose: Quick interactive summaries.

#Syntax
sapply(X, FUN)

#Basic Example
sapply(1:5, sqrt)

#Real-World Example
#Quick statistics for reporting.

#Common Mistakes
##Relying on simplification in production

#Best Practices
##Use only for exploratory analysis

#Use vs Not
##Prototyping
##Production pipelines

#Scenario: Count missing values per variable in AE.
sapply(LB, function(x) sum(is.na(x)))
#SDTM use: Data quality check before submission.

#Anonymous Functions ==========
##Definition:Functions defined inline without names.
#Purpose:One-off transformations.

#Syntax
lapply(x, function(y) y + 1)

#Basic Example
lapply(1:3, function(x) x * 10)

#Real-World Example
##Inline rule-based transformations.

#Common Mistakes
##Writing complex logic inline

#Best Practices
##Extract to named functions if reused

#Use vs Not
##Simple logic
##Complex workflows

#Scenario: Flag serious adverse events.
#SDTM use: Derive SAEFL.
AE$SAEFL <- sapply(AE$AESER, function(x) ifelse(x == "Y", "Y", "N"))


#Margin Concept ==========rows vs columns
#Definition:Controls direction of operation.
#Purpose:Specify rows (1) or columns (2).

#Syntax
apply(X, 1, FUN)

#Example
apply(mat, 2, mean)

#Real-World Example
##Column-wise normalization.

#Mistakes
##Reversing margins

#Best Practices
##Remember: 1 = rows, 2 = columns

#Use vs Not
##Matrix operations
##List processing

#Scenario: Number of non-missing lab results per test.
#SDTM use: Lab completeness check.
apply(!is.na(LB[, c("LBSTRESN")]), 2, sum)

##Output behavior
#SDTM insight: lapply() preserves structure; sapply() may break it.
lapply(AE[, c("AETERM", "AESEV")], unique)
sapply(AE[, c("AETERM", "AESEV")], unique)


#vapply()  =============Type-safe derivations (preferred in production)
##Definition: Type-safe version of sapply().
#Purpose :Prevent unexpected output changes.

#Syntax
vapply(X, FUN, FUN.VALUE)

#Example
vapply(1:3, sqrt, numeric(1))

#Real-World Example
##Validated reporting pipelines.

#Mistakes
##Wrong FUN.VALUE

#Best Practices
##Prefer in production

#Use vs Not
##Production code
##Quick exploration

#Scenario: Calculate AE count per subject.
#SDTM use: Subject-level AE counts for ADaM linkage.
vapply(split(AE$AETERM, AE$USUBJID),
       length,
       integer(1))


#tapply() =========Grouped summaries
#Definition: Apply function by group.
#Purpose : Grouped aggregations.

#Syntax
tapply(X, INDEX, FUN)

#Example
tapply(mtcars$mpg, mtcars$cyl, mean)

#Real-World Example
##Average salary per department.

#Mistakes
##Misaligned index lengths

#Best Practices
##Use factors for grouping

#Use vs Not
##Simple grouped stats
##Complex joins

#Scenario: Count AEs by severity.
#SDTM use: AE summary table generation.
tapply(AE$AETERM, AE$AESEV, length)

#mapply()==========Multi-variable derivation
#Definition:Multivariate apply.
#Purpose:Vectorized multi-argument functions.

#Syntax
mapply(FUN, X1, X2)

#Example
mapply(sum, 1:3, 4:6)

#Real-World Example
##Row-wise calculations across datasets.

#Mistakes
##Unequal input lengths

#Best Practices
##Keep arguments aligned

#Use vs Not
##Parallel vector ops
##Nested logic

#Scenario: Derive AE duration.
#SDTM use: Derive duration variables.
AE$AEDUR <- mapply(
  function(start, end) as.numeric(end - start),
  AE$AESTDTC, AE$AEENDTC
)


#rapply() =======Nested SDTM structures
#Definition -Recursive apply on lists.
#Purpose --Deep list transformations.

#Example
rapply(list(a = 1, b = list(2, 3)), sqrt)

#Real-World Example
##JSON data transformation.

#Scenario: Convert numeric values in nested SDTM metadata.
#SDTM use: Metadata normalization.
rapply(LB, function(x)
  if (is.numeric(x)) round(x, 2) else x,
  how = "replace"
)


#Apply vs loop (SDTM example)===
##SDTM use: Faster subject-level aggregation than loops.
sapply(split(AE$AETERM, AE$USUBJID), length)

#Handling NA values
#Scenario: Mean lab value ignoring missing.
#SDTM use: Lab summary statistics.
sapply(LB$LBSTRESN, mean, na.rm = TRUE)


#Functional Control Flow (purrr)
#=======================
map_dbl(data, mean) #Cleaner, safer, scalable.

#Exception Handling
#Real-World
#API failures, file read errors
tryCatch(
  expr,
  error = function(e) "Failed"
)

#Control Flow in Functions
#=========================
calculate <- function(x) {
  if (x < 0) stop("Invalid")
  x^2
}

#Parallel Control Flow
#=====================
future_lapply(files, process)
#Used For
#Large-scale data pipelines.

#Control Flow with dplyr
mutate(flag = if_else(value > 0, "P", "N"))

#PRACTICAL INSIGHTS
#==================
##Performance Considerations
##Vectorization > loops
##Avoid growing objects inside loops
##Use apply or purrr for scale

#Common Project Pitfalls
##Nested if-else hell
##Ignoring NA
##Overusing loops

#Scalability Notes
##Modularize control logic into functions
##Prefer declarative logic
##Add logging in conditional branches

#Quiz:
#=====

#Assignment:
#===========
#https://github.com/ganeshbabuNN/MyNotes/blob/master/R_Language/2-Programming_Fundamentals/Assignments/Assignment_controlFlows.pdf

#Resources
#=========
#https://www.tutorialspoint.com/r/r_decision_making.htm
#https://www.tutorialspoint.com/r/r_loops.htm