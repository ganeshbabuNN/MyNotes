#Exception handling
#Types of Conditions in R 
#try() – Basic Error Handling
#tryCatch() – Advanced Error Handling
#withCallingHandlers()
#Custom Error Creation
#Global Error Handling (options)
#stopifnot()
#Suppressing Warnings and Messages
#Condition Signaling (Advanced)


#Exception handling
#==================
#Exception handling is the process of anticipating, detecting, and managing runtime errors, warnings, and unexpected conditions so that your R code:
##Does not crash abruptly
##Produces meaningful messages
##Continues execution safely when possible

#Types of Conditions in R
#========================
#n R, errors belong to a broader system called conditions.
#There are 3 main types:
#Type-->Stops--> Execution?-->	Purpose
#message()-->No-->	Informational message
#warning()--> No-->Something unexpected but not fatal
#stop()-->Yes-->Fatal error

#Message-Informational only -Used to inform user.
#------------------------------------------------
##compared to print() which shows content of the object.it represent the index number where messsage() its for plain notification
#Execution continues.
message("Data loaded successfully")

#Ex:file.csv
#  name value
#1    a     3
#2    b     2
#3    c     4
process_file <- function(file) { 
  data<- read.csv(file)
  message("file has been loaded to data dataframe")
  if (nrow(data) == 0) {
    warning("File is empty 111") 
  } 
  cat("mean value is :",mean(data$value))
}
read.csv("file.csv")
process_file("file.csv")

#Warning()-Used when something suspicious happens.
#-------------------------------------------------
sqrt(-1)
##Code continues
####Code continues
#You can also create custom warning:
sqrt(-1)
warning("Column has missing values")
##ex,in SDTM, some variables are excepted but optional.

#ex.
process_file <- function(file) { 
  data<- read.csv(file)
  message("file has been loaded to data dataframe")
  if (nrow(data) == 0) {
    warning("File is empty 111") 
  } 
  cat("mean value is :",mean(data$value))
}
read.csv("file.csv")
process_file("file.csv")

#stop()-Stops execution immediately.
#-----------------------------------
if (!file.exists("data.csv")) {
  stop("File not found!")
}}
#Execution stops

#Ex.
process_file <- function(file) { 
  if (!file.exists(file)) {
    stop("File not found!")
  }
  data<- read.csv(file)
  message("file has been loaded to data dataframe")
  if (nrow(data) == 0) {
    warning("File is empty 111") 
  } 
  cat("mean value is :",mean(data$value))
}
read.csv("file4.csv")
process_file("file4.csv")

#try() – Basic Error Handling
#===========================
#Prevents code from stopping.
try(log("a") #this gives an Error

#when you use try - 
result <- try(log("a"))
print(result) 
#But script does NOT stop.
#Silent mode
try(log("a"), silent = TRUE)
#Real-time Example (Batch Processing)
files <- c("a.csv", "b.csv", "c.csv")
for (f in files) {
  try(read.csv(f))
}
#If one file fails, loop continues.
#Checking try() Result #optional
res <- try(log("a"))
if (inherits(res, "try-error")) {
  print("Error occurred")
}

#Ex.
res <- try(read.csv("file2.csv"),silent = TRUE)
res
if(inherits(res, "try-error")) {
  print("File not found or file corrupted")
}

process_file <- function(file) { 
  data <- try(read.csv(file),silent = TRUE)
  if(inherits(data, "try-error")) {
    print("File not found or file corrupted")
  }
  message("file has been loaded to data dataframe")
  if (nrow(data) == 0) {
    warning("File is empty 111") 
  } 
  cat("mean value is :",mean(data$value))
}
process_file("file4.csv")

#tryCatch() – Advanced Error Handling
#=====================================
#This is the most important function.

tryCatch(
  expr,
  error = function(e) {},
  warning = function(w) {},
  message = function(m) {},
  finally = {}
)

#handling error handling
tryCatch(
  {
    log("a")
  },
  error = function(e) {
    print("Error occurred")
    print(e$message)
  }
)

#Ex.
process_file <- function(file) { 
  tryCatch({
    data <- read.csv(file)
    message("file has been loaded to data dataframe")
    if(nrow(data) == 0){
      warning("File is empty 111") 
    } 
    cat("mean value is :",mean(data$value))
    },
    error = function(e) {
      message(paste("Error in file:", file))
    }
  )
}
read.csv("file4.csv")
process_file("file4.csv")

#Handling Warning Separately
sqrt(-1) #check this.
tryCatch(
  {
    sqrt(-1)
  },
  warning = function(w) {
    print("Warning caught!")
    print(w$message)
  }
)

#Ex:
process_file <- function(file) { 
  tryCatch({
    data <- read.csv(file)
    message("file has been loaded to data dataframe")
    if(nrow(data) == 0){
      warning("File is empty 111") 
    } 
    cat("mean value is :",mean(data$value))
  },
  warning = function(w) {
    message(paste("Warning in file:", file))
    return(NA)
  },
  error = function(e) {
    message(paste("Error in file:", file))
  }
  )
}
read.csv("file2.csv")
process_file("file2.csv")

#Using finally
#its like at the end of your code do 
#finally always runs
tryCatch(
  {
    log("a")
  },
  error = function(e) {
    print("Error handled")
  },
  finally = {
    print("Cleanup activity done")
  }
)

#Ex:
process_file <- function(file) { 
  tryCatch({
    data <- read.csv(file)
    message("file has been loaded to data dataframe")
    if(nrow(data) == 0){
      warning("File is empty 111") 
    } 
    cat("mean value is :",mean(data$value))
  },
  warning = function(w) {
    message(paste("Warning in file:", file))
    return(NA)
  },
  error = function(e) {
    message(paste("Error in file:", file))
  },
  finally = {
    message(paste("Finished processing:", file))
  }
  )
}
read.csv("file3.csv")
process_file("file3.csv")

#withCallingHandlers()
#======================
##Used when you want to handle warning but continue execution.
##Suppresses warning
##Continues execution

withCallingHandlers(
  sqrt(-1),
  warning = function(w) {
    print("Warning intercepted")
    invokeRestart("muffleWarning")
  }
)

#Ex:
process_file <- function(file) {
    data <- read.csv(file)
  withCallingHandlers(
    cat("mean value is :",mean(data$value)),  #this is where the warning catched
    warning = function(w) {
      print("Warning intercepted")
      invokeRestart("muffleWarning")
    }
  )
}
read.csv("file2.csv") #coz in mean col a is there?
process_file("file2.csv")

#Custom Error Creation
#======================
##You can create structured errors.
## this custom error should be before error.
my_function <- function(x) {
  if (x < 0) {
    stop(structure(
      list(message = "Negative value not allowed"),
      class = c("custom_error", "error", "condition")
    ))
  }
}

#Handling custom error:
tryCatch(
  my_function(-5),
  custom_error = function(e) {
    print("Custom error handled")
  }
)

#Ex:
FileNotFoundException <- function(file) {
  if (!file.exists(file)) {
    stop(structure(
      list(message = "File not found! Check the file again"),
      class = c("custom_error", "error", "condition")
    ))
  }
}

#Lets add the custom Error
process_file <- function(file) { 
  tryCatch({
    FileNotFoundException(file)
    data <- read.csv(file)
    message("file has been loaded to data dataframe")
    if(nrow(data) == 0){
      warning("File is empty 111") 
    } 
    cat("mean value is :",mean(data$value))
  },
  warning = function(w) {
    message(paste("Warning in file:", file))
    return(NA)
  },
  custom_error = function(e) {        #add this file with the class 
    message("Custom error handled")
  },
  error = function(e) {
    message(paste("Error in file:", file))
  },
  finally = {
    message(paste("Finished processing:", file))
  }
  )
}
read.csv("file4.csv")
process_file("file4.csv")
process_file("file.csv")

#Real Production Example (SDTM Validation)
validate_numeric <- function(x) {
  tryCatch(
    {
      if (!is.numeric(x)) {
        stop("Input must be numeric")
      }
      mean(x)
    },
    error = function(e) {
      return(NA) #Instead of crashing, returns NA
    }
  )
}
validate_numeric(1)
validate_numeric(-1)
validate_numeric("abc")

#Global Error Handling (options)
#===============================
#Show error traceback automatically
options(error = traceback)
#When error occurs -> shows call stack.
#Recover Mode (Interactive Debug)
options(error = recover)
#Very useful in debugging complex programs.
#if you have set recover or traceback and want R to stop interrupting you and just print a standard error message again, use:
# Reset to default R behavior
options(error = NULL)

#stopifnot()
#===========
#Quick validation tool.
stopifnot(is.numeric(5))
#If condition fails -> stops execution.
#ex.
stopifnot(is.numeric("a")) 
#Error generated

#Suppressing Warnings and Messages
#=================================
#suppressWarnings()
suppressWarnings(sqrt(-1))
#suppressMessages()
suppressMessages(library(dplyr))
#Use carefully in production.

#Condition Signaling (Advanced)
#==============================
#You can manually signal:
signalCondition(simpleWarning("Manual warning"))
#Mostly used in package development.

#Practical Production-Level Example
#==================================
process_file <- function(file) {
  tryCatch(
    {
      data <- read.csv(file)
      if (nrow(data) == 0) {
        warning("File is empty")
      }
      
      mean(data$value)
    },
    warning = function(w) {
      message(paste("Warning in file:", file))
      return(NA)
    },
    error = function(e) {
      message(paste("Error in file:", file))
      return(NULL)
    },
    finally = {
      message(paste("Finished processing:", file))
    }
  )
}

files <- c("file1.csv", "file2.csv")
lapply(files, process_file)
#Script never crashes
#Errors logged
#Warnings handled
#Cleanup always runs
##This is how real production jobs are written.


#When to Use What
#-----------------
#Situation-->Recommended
#Simple protection-->try()
#Production script-->tryCatch()
#Package development-->Custom conditions
#Debugging-->options(error = recover)
#Quick validation-->stopifnot()
 
# Quiz:
# =====

# Assignment:
# ===========
 
# Resources
# =========
# https://www.geeksforgeeks.org/handling-errors-in-r-programming/
# https://www.r-bloggers.com/2012/10/error-handling-in-r/
# https://medium.com/analytics-vidhya/error-handling-in-r-23b22d82fa6f
# https://subscription.packtpub.com/book/big_data_and_business_intelligence/9781784390815/1/ch01lvl1sec18/handling-errors-in-a-function