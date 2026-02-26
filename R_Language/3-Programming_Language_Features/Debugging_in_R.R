#Debugging
#Types of Errors in R
#Basic Debugging Tools in R
#Structured Debugging Approach
#Debugging with try() and tryCatch()
#Logging for Debugging
#Advanced Debugging Tools
#RStudio Debugger
#Performance Debugging
#Defensive Programming

#Debugging
#========
#debugging = Identifying + Isolating + Fixing errors or unexpected behavior in code.
#In R, issues typically fall into:
#Type --> MeaningExample
#Syntax Error-->Code written incorrectly--> Missing `)`
#Runtime Error--> Error during execution--> Subscript out of bounds  
#Logical Error--> Code runs but wrong output--> Incorrect filter condition
#Performance Issue--> Code slow--> Loop instead of vectorization

#Types of Errors in R
#====================
#A. Syntax Error
#mean(c(1,2,3) #Error: unexpected end of input
   
#B. Runtime Error
x <- c(1,2,3)
x[5]

#C. Logical Error
x <- c(1,2,3,4)
mean(x[x > 10]) #No error, but returns NaN — logical issue.

#Basic Debugging Tools in R
#==========================
#traceback()
#-----------
#If you had a much larger script and weren't sure where the error started, you could use the traceback() function immediately after the error occurs. 
#It would show you the "stack" of functions:
#Shows where the error occurred.

f1 <- function(x) f2(x)
f2 <- function(x) {
  log(x)
}

f1("text")

traceback() #Output shows call stack.
#This shows that the error happened at level 3 (log), which was called by level 2 (f2), which started at level 1 (f1).
#If you are using RStudio, you can make these levels appear automatically:
#Go to the Debug menu at the top.Select On Error -> Error Inspector

#browser() (Most Important Tool)
#------------------------------
#Pauses execution and allows inspection.
calculate_mean <- function(x) {
  browser()
  mean(x)
}

calculate_mean(c(1,2,"a"))

#Inside browser:
class(x)

#Commands inside browser:
##Command-->Meaning
#n-->Next line
#c-->Continue
#Q-->Quit
#where-->Show call stack

#debug()
#-------
##Step into function automatically.
debug(mean)
mean(c(1,2,3))

#debugonce()
#-----------
##Debug only next call.
#Now store the f1 & f2 function in above example
f1 <- function(x) f2(x)
f2 <- function(x) {
  log(x)
}
#Flag the function: Run debugonce(f1) in your console.
debugonce(f1)
#now trigger the funciton 
f1("text")

#recover()
#---------
#Very powerful in production.
#traceback() is a post-mortem and debugonce() is a ride-along, recover() is the "Crime Scene Investigation."
#If error happens--> shows numbered list of call stack frames.
#You can select frame and inspect objects.

#1,To use it, you first have to tell R to change its "error behavior" using options(). Run this in your console:
options(error = recover) #R won't just print an error and quit.
#2.Run the f1 and F2 function with calling
f1 <- function(x) f2(x)
f2 <- function(x) {
  log(x)
}
f1("text")
#3.Instead of just seeing "Error in log(x)...", R will present you with a numbered menu in the console:
#4. recover() is a "global" setting. If you leave it on, R will pause on every error you make (even typos). To turn it off and go back to normal, run:
options(error = NULL)

#Summary
#Tool-->Action-->Best
#1.traceback()-->Shows the call stack.-->Finding where it broke quickly.
#2.debugonce()-->Steps through one line at a time.-->Watching the logic unfold.
#3.recover()-->Opens a menu of all function levels.-->Complex errors with many nested functions.

#Structured Debugging Approach (Professional Workflow)
#=============================
#When error happens:
#Step 1: Read the FULL error message
#Step 2: Use traceback()
#Step 3: Insert browser()
#Step 4: Check object structure
#Step 5: Validate assumptions
#Step 6: Write defensive code

#Real-World Example
#Imagine you are deriving AGE in ADaM.
#before lets derive a age manually
a<-difftime(as.Date("2026-02-25"),as.Date("1983-06-13"),units = "days")
round(as.numeric(a)/365)

#Sample function
#1.dervie_age
derive_age <- function(dob, ref_date) {
  age <- difftime(ref_date, dob, units = "days") / 365
  return(round(age))
}
#2.call the function
derive_age("1983-06-13", "2026-02-22")

#3.Lets start debugging
#4.add browser()
derive_age <- function(dob, ref_date) {
  browser()
  age <- difftime(ref_date, dob, units = "days")/ 365
  return(round(age))
}
#4.Now the call the functions
#5. now start the inspect
class(dob)
class(ref_date) # both are character
##Problem: Not Date class.
#6.fix the code
dob <- as.Date(dob)  ##fix
ref_date <- as.Date(ref_date) ## fix
age <- as.numeric(difftime(ref_date, dob, units = "days"))/ 365 ##fix as.numeric()

#Finally the code looks like this after fixing
derive_age <- function(dob, ref_date) {
  dob <- as.Date(dob)  ##fix
  ref_date <- as.Date(ref_date) ## fix
  age <- as.numeric(difftime(ref_date, dob, units = "days"))/ 365
  return(round(age))
}
derive_age("1983-06-13", "2026-02-22")

#Debugging Data Issues
#Very common in SDTM/ADaM.
#Example: Unexpected NA values
df <- data.frame(
  USUBJID = c("01","02","03"),
  AGE = c(34, NA, 45)
)

#Debug
mean(df$AGE)
summary(df$AGE)
is.na(df$AGE)
#fix
mean(df$AGE, na.rm = TRUE)

#Debugging Loops
#----------------
#Problem Code
x <- 1:5
for(i in 1:length(x)) {
  print(x[i+1])
}

#debug with Browser()
for(i in 1:length(x)) {
  browser()
  print(x[i+1])
}
#Inspect i.
#When i = 5 → x[6] → error.

#fix
for(i in 1:(length(x)-1)) {
  print(x[i+1])
}

#Debugging with try() and tryCatch()
#===================================
#Example: File Reading
read_file <- function(file) {
  read.csv(file)
}
read_file("c:\\ganesh.csv")
#If file missing → crash.

#Trycatch() syntax, this are shown in new chapter error handing
tryCatch(
  expr,
  error = function(e) {},
  warning = function(w) {},
  finally = {}
)

#Safer Version
read_file <- function(file) {
  tryCatch( #Fix
    {
      read.csv(file)
    },
    error = function(e) {  #Fix
      message("File not found: ", e$message)
      return(NULL)
    }
  )
}
read_file("c:\\ganesh.csv")


#Logging for Debugging (Professional Method)
#=====================
#Instead of:
print("Processing started")

#use
library(logger)
log_info("Processing started")
log_error("File missing")

#Advantages:
##Timestamp
##Log levels
##Production ready

#Advanced Debugging Tools
#========================
#Check structure quickly:
str(df)

#Reproducible debugging:
#dput() takes an object—like a data frame, a list, or even a function
# and turns it into the exact R code needed to recreate that object from scratch

#1.create a data
my_data <- data.frame(id = c("1", "2", "text"), value = c(10, 20, 30))
#2.Run dput()
dput(my_data)
#3.the output ,R will spit out a block of text that looks like this:
structure(list(id = c("1", "2", "text"), value = c(10, 20, 30)), class = "data.frame", row.names = c(NA, -3L))
#4.Now, they have the exact same data you have, including the hidden attributes like column types and row names.

#RStudio Debugger (Step-by-step GUI)
#================
#Click left margin to set breakpoint
#Run function
#Step into / Step over
#Inspect environment pane

#Performance Debugging
#=====================
#common types is 
system.time()
Rprof()
profvis::profvis()

# This function is intentionally slow
slow_function <- function(n) {
  vec <- c() 
  for (i in 1:n) {
    vec <- c(vec, i) # Culprit: R has to rebuild the vector every single time
  }
  return(vec)
}
slow_function(10)
#Using system.time()
##First, let's see how long this takes for 50,000 iterations.
system.time(slow_function(50000))

#2. Using profvis() to see the "Why"
profvis::profvis({
  slow_function(50000)
})

#3.The Fix:
fast_function <- function(n) {
  vec <- numeric(n) # Tell R the size upfront
  for (i in 1:n) {
    vec[i] <- i
  }
  return(vec)
}
fast_function(10)

system.time(fast_function(50000))

#Defensive Programming (Prevent Bugs)
#=====================
#Use Checks like stop() helps alot.
number_check <- function(a){
  if(!is.numeric(a)){
    stop("x must be numeric")
  }else{
    message("this is numeric")
  }
} 
number_check(1)
number_check("32")

#Use Assertions stopifnot()
stopifnot(!is.numeric("ga"))

#this concepts are covered in detail in Defensive_Programming.R

#Professional Debugging Checklist
#--------------------------------
##Check error message
##Use traceback()
##Check input data
##Check column names
##Validate types
##Validate missing values
##Reproduce with small sample
##Add logging
##Write unit test

#Real Corporate Scenario Example
#------------------------------
process_data <- function(df) {
  df$AGEGRP <- ifelse(df$Age > 65, "OLD", "YOUNG")
  return(df)
}
process_data(df)
#Debug
names(df)
#Column actually Age.R is case sensitive.
df$AGEGRP <- ifelse(df$AGE > 65, "OLD", "YOUNG")
df


# https://www.ptutorials.com/elearning/r/rdebugging.php
#https://www.geeksforgeeks.org/r-language/debugging-in-r-programming/
