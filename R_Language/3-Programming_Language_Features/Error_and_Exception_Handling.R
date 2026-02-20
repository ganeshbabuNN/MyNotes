#Exception handling
#Error
#Warning
#Message
#stop() – Manually Raise an Error
#warning() – Raise a Warning
#try() – Basic Error Capture
#Checking try() Result
#tryCatch() – Core Exception Handling Tool
#Handling Errors Gracefully
#Capturing Error Messages
#Handling Warnings Explicitly
#Handling Messages
#finally Block (Always Executes)
#Suppressing Warnings & Messages

#Exception handling
#==================
#Exception handling is the process of anticipating, detecting, and managing runtime errors, warnings, and unexpected conditions so that your R code:
##Does not crash abruptly
##Produces meaningful messages
##Continues execution safely when possible

#take an example for logarthemic
log(10)

#lets put in a functions
logtest_error <- function(x){
  print("process sarted")
  print(log(x))
  print("process ended")
}
logtest_error(10)

#Error
##Stops execution immediately
logtest_error("a")

#Warning
##Execution continues
logtest_error(-1)

#Message
##Informational only
##compared to print() which shows content of the object.it represent the index number where messsage() its for plain notification
logtest_error <- function(x){
  message("process sarted")
  print(log(x))
  message("process ended")
}
logtest_error(10)

#stop() – Manually Raise an Error
#Used to terminate execution intentionally.
#Common in validation logic
logtest_error <- function(x){
  message("process sarted")
  if(x <0){
    stop("its a negative number")
  }
  print(log(x))
  message("process ended")
}
logtest_error(-5) 

# warning() – Raise a Warning
logtest_error <- function(x){
  message("process sarted")
  if(x <0){
    warning("its a negative number") #add warning message.
  }
  res<-log(x)
  print("The log value: ",res)
  message("process ended")
}
logtest_error(-5)  

#try() – Basic Error Capture
##Does not stop execution
logtest_error <- function(x){
  message("process sarted")
  if(x <0){
    warning("its a negative number") #add warning message.
  }
  res<-try(log(x))#here its captures the error but it continues
  #try(print("The log value: ",res) )
  message("process ended")
}
logtest_error("a")  

#Checking try() Result
res <- try(log("a"))
if (inherits(res, "try-error")) {
  print("Error occurred")
}

#tryCatch() – Core Exception Handling Tool
tryCatch(
  expr,
  error = function(e) {},
  warning = function(w) {},
  finally = {}
)

#Handling Errors Gracefully
#Returns NA instead of crashing
logtest_error <- function(x){
  #message("process sarted")  #remove message
  tryCatch(
    log(x),
    error=function(e){
      return(NA)
    }
  )
  #print("The log value: ",res) 
  #message("process ended")
}
logtest_error("a")


#Capturing Error Messages
logtest_error <- function(x){ 
  tryCatch(
    log(x),
    error=function(e){
      e$message
    }
  )
}
logtest_error("a")

#Handling Warnings Explicitly
logtest_error <- function(x){ 
  tryCatch(
    log(x),
    error=function(e){
      e$message
    },
    warning=function(w){
      print("warning catpured")
    }
  )
}
logtest_error(-1)

#Handling Messages
logtest_error <- function(x){ 
  tryCatch(
    message("hello"), #add this
    message=function(m){ 
      "Message intercepted"
    },
    log(x),
    error=function(e){
      e$message
    },
    warning=function(w){
      print("warning catpured")
    }
  )
}
logtest_error(30) #it will intercept on the right execution
logtest_error(-1)
logtest_error("A")

#finally Block (Always Executes)
#Used for closing files, DB connections
logtest_error <- function(x){  
  tryCatch( 
    #stop("failure"),
    log(x),
    error=function(e){
      e$message
    },
    warning=function(w){
      print("warning catpured")
    },
    finally={
      print("cleanup done")
    }
  )
}
logtest_error(30) 
logtest_error(-1)
logtest_error("A")


#Suppressing Warnings & Messages
##suppress only if there is an error
logtest_error <- function(x){  
  suppressWarnings(log(x))
}
logtest_error(-1) 

##message(Hidden)
#no output will appear
logtest_error <- function(x){  
  suppressWarnings(log(x))
  suppressMessages(message("Hidden"))
}
logtest_error(-1) 

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