
#########
# FOR LOOPS
#########

### loops are programming structures that help us repeat (replicate)
### commands or instructions

### the for loop allows us to iterate over a vector or a sequence

### syntax:

### for (values in sequence) { block of instructions }

### so the for loop will repeat the block of instructions
### for each value in the sequence

### here's a simple loop that squares the numbers from 1 to 10
### and prints the results


for (i in 1:10) {
  
  print(i ^ 2)
  
}

### we can choose to store the squares in a vector

### we must pre-define (initialize) the vector outside the loop

x <- c()

for (i in 1:10) {
  
  x <- c(x, i^2)
  
}

x

### another way to do the same thing

x <- c()

for (i in 1:10) {
  
  x[i] <- i ^ 2
  
}

x

### create a for loop that squares the components of a vector

x <- seq(1,10,length=20)

x

for (i in x) {
  
  print(i^2)
  
}

### put the results in a new vector y

y <- c()

for (i in x) {
  
  y <- c(y, i^2)
  
}

y

### if you want to use brackets to create the y vector components
### it's a bit more complicated

y <- c()

ind <- 1

for (i in x) {
  
  y[ind] <- i^2
  
  ind <- ind + 1
  
}

y

### the next statement skips the current iteration of the loop
### if a condition is met

### the following loop will square the numbers from 1 to 10
### except 4

x <- c()

for (i in 1:10) {
  
  if (i == 4) next
  
  x <- c(x, i^2)
  
}

x

### the break statement ends the loop
### if a condition is met

### the following loop will square the numbers from 1 to 3

x <- c()

for (i in 1:10) {
  
  if (i == 4) break
  
  x <- c(x, i^2)
  
}

x


###############################################################


##########
# WHILE LOOPS
##########

### the while loop executes a block of commands
### while a condition is satisfied
### (when the condition is not satisfied any longer, it stops)

### syntax:

### while (condition)  { block of instructions }

### create a while loop that takes the square root
### from the numbers 1-10 and stores the results in a vector

i <- 0

x <- c()

while (i<10) {
  
  i <- i + 1
  
  x <- c(x, sqrt(i))
  
  }

x

### N.B. if the condition is always true
### the loop will go on infinitely (you'll have to stop it by force)

i <- 0

while (i<10) {
  
  sqrt(i)
  
}

### the next statement skips the current iteration of the loop
### if a condition is met

### the following loop will take the square root of numbers from 1 to 10
### except 4

i <- 0

x <- c()

while (i<10) {
  
  i <- i +1
  
  if (i==4) next
  
  x <- c(x, sqrt(i))
  
  
}

x

### the break statement ends the loop
### if a condition is met

### the following loop will take the square root of numbers from 1 to 3

i <- 0

x <- c()

while (i<10) {
  
  i <- i +1
  
  if (i==4) break
  
  x <- c(x, sqrt(i))
  
  
}

x


###############################################################





##########
# REPEAT LOOPS
##########

### a repeat loop replicates a block of instructions 
### for an indefinite number of times

### syntax:

### repeat { block of instructions }

### this loop has no condition
### so we have to use a break statement to make it stop at a given point
### otherwise, it will go on infinitely

### create a repeat loop that prints the even numbers from 2 to 20

### it stops when our variable is equal to 10

i <- 0

repeat {
  
  i <- i + 1
  
  print(i * 2)
  
  if ( i==10 ) break
  
}

### let's see what happens without the break statement

i <- 0

repeat {
  
  i <- i + 1
  
  print(i * 2)
  
}

###############################################################







################
# NESTED FOR LOOPS
################


x <- c(1, 2, 3)

y <- c(10, 20, 30, 40, 50)

### the loop below takes each component in x
### and multiplies it with each component in y
### then stores the results in a 3x5 matrix row-wise

### first we must pre-define the matrix as an empty object

m <- c()

### run the loop

for (i in 1:length(x)) {
  
      ### initialize a vector that will be the matrix row
  
      rw <- c()
  
     for (j in 1:length(y))  {
       
       ### inside the smaller loop i remains constant
       ### so the x[i] component is multiplied with each element of y
       ### and the result is stored in the rw vector
       
       rw <- c(rw, x[i] * y[j])
       
     }
      
      ### add the new row to the object m
  
  m <- rbind(m, rw)
  
}

m

### the next code is a loop through a matrix

### it computes the sum of component squares for each row
### and stores the result in a vector


m <- matrix(1:12, nrow = 3, byrow = TRUE)

m

### initialize the vector of the sum of squares

vect_ssq <- c()

for (i in 1:nrow(m)) {
  
  ### here we loop in rows
  
  ### initialize the vector of squares
  
  sq <- c()
  
  for (j in 1:ncol(m))  {
    
    ### here we loop in columns
    
    ### square each element in the row
    ### and add the results to the vector of squares
    
    sq <- c(sq, m[i,j]^2)
    
  }
  
  ### add the sum of squares - sum(sq) - to the vector
  
  vect_ssq <- c(vect_ssq, sum(sq))
  
}

vect_ssq

############################################################









#####################
# CONDITIONAL STATEMENTS
#####################

### a conditional statement (if statements)
### executes a set of instructions
### only if a given condition is met

### syntax:

### if (condition) { instructions to be executed if the condition is met }
### else { instructions to be executed if the condition is not met }

### the else statement is not mandatory

### if the else statement is missing and the condition is not satisfied
### the program will not execute anything

### multiply a number by 5
### if it is greater than zero

x <- 10

if (x>0) { x*5 }

x <- -2

if (x>0) { x*5 }

### multiply a number by 5
### if it is greater than zero
### else, multiply it by 10

x <- 10

if (x>0) { x*5 } else { x*10 }

x <- -7

if (x>0) { x*5 } else { x*10 }

### the condition can be more complex
### (using boolean expression)

x <- 10

y <- 7

### check if two numbers are both strictly positive

### if yes, compute their sum
### if no, print the message "Stop code"

if (x>0 & y>0) { x + y } else { print("Stop code") }

x <- 10

y <- 0

if (x>0 & y>0) { x + y } else { print("Stop code") }

### check if at least one of two numbers is strictly positive

### if yes, add them
### if no, print the message "Stop code"

x <- 10

y <- -5

if (x>0 | y>0) { x + y } else { print("Stop code") }

x <- 0

y <- -2

if (x>0 | y>0) { x + y } else { print("Stop code") }

### the blocks of instructions can be more complex

### if a number is positive or zero
### create a sequence of 10 components from 0 to that number
### sum the components and square the sum

### else change the sign of the number and do the same operations as above 

x <- -10

if (x>=0)  {
  
  s <- seq(0, x, length = 10)
  
  sum(s)^2
  
} else {
  
  x <- -x
  
  s <- seq(0, x, length = 10)
  
  sum(s)^2
  
}

############################################################





############################
# NESTED CONDITIONAL STATEMENTS
############################

### check whether a number is lower than 100
### if yes, check whether it is lower than 50
### then prints appropriate messages for each situation


x <- 900

if ( x<=100 ) {
  
  if ( x <= 50) {
    
    print("Your number is lower than or equal to 50")
    
  } else {
    
    print("Your number is between 50 and 100")
    
    
  }
  
  
} else {
  
  print("Your number is greater than 100")
  
  
}

############################################################





###############################
# LOOPS AND CONDITIONAL STATEMENTS
###############################

### ifelse() is a function that combines a loop
### and a conditional statement

x <- c(8, 10, 15, 20, 23, 26, 31)

ifelse(x%%2==0, x/2, x)

### we can do the same using a for loop

for (i in x) {
  
  if (i%%2==0) { print(i/2) } else {
    
    print(i)
    
  }
  
}

### a loop that goes through a matrix
### and separates the even components from the odd ones
### putting them in different vectors

m <- matrix(sample(100, 9), nrow = 3)

View(m)

even <- c()

odd <- c()

### the i index will be used for the rows
### the j index will be used for the columns

for (i in 1:nrow(m))  {
  
  for (j in 1:ncol(m))   {
    
  
    if( m[i,j]%%2 == 0 )  { even <- c(even, m[i,j]) } else {
      
      odd <- c(odd, m[i,j])
      
    }
      
  }
  
}

even

odd

############################################################








######################
# USER DEFINED FUNCTIONS
######################

### a function is a sequence of instructions
### that the programmer will likely use frequently

### that's why it is convenient to store these instructions 
### in an object that can be easily called later on

### this object is a function

### a function can be viewed also as a sub-program
### or sub-routine

### the R program has very many built-in functions
### the apply() family of functions, for example
### or the mathematical functions: sqrt(), exp(), log(), sin(), abs() etc.
### and many more

### in this section we talk about functions written by users

### syntax:

### function (arguments) { block of instructions }

### a function that computes the following:
### x^2 + 3*x + 5

f <- function (x)  {
  
  x^2 + 3*x + 5
  
}

### call the function
### (apply the function to particular arguments)

f(1)

f(-5)

f(1:10)

### get the class

class(f)

### a function of two arguments, x and y, that computes the following:
### sin(x) + cos(y)

f <- function (x,y) {
  
  sin(x) + cos(y)
  
}

f(0,0)

f(190, 120)

### a function that computes x^2/(y-1)
### if y is different from 1

f <- function (x,y) {
  
  if (y!=1) { x^2/(y-1) }
  
}

f(10, 11)

f(3,1)

### the same function, a bit more developed

f <- function (x,y) {
  
  if (y!=1) { x^2/(y-1) } else {
    
    print("The y value must be different from 1.")
    
  }
  
}

### a function that computes the area of a rectangle

area <- function (width, height)  {
  
  width * height
  
}

area(10,4)

### we can assign default values to arguments 

area2 <- function (width, height=4)  {
  
  width * height
  
}

area2(10)

### to get the function arguments we use formals()

formals(area)

### to get the block of statements we use body()

body(area)

############################################################





#################
# THE return COMMAND
#################

### be default, a function returns the last computed value

### however, sometimes we have to use the return command
### to get a returned value

### syntax:

### return ( expression )

### here's an example

area <- function (width, height)  {
  
  a <- width * height
  
}

area(5,3)

a

### the variable a is local to the function
### it cannot be found in the global environment

### to get a return, we have to use the return command

### let's rewrite the function

area <- function (width, height)  {
  
  a <- width * height
  
  return(a)
  
}

area(5,3)

### we can make the function return other values too

### for example, the width argument

area <- function (width, height)  {
  
  a <- width * height
  
  return(list(a, width))
  
}

area(5,3)

### so if we want to return more than one values
### we have to put them in a list

### to make the a variable global, we must use a special assignment symbol

### <<-

area <- function (width, height)  {
  
  a <<- width * height
  
  return(list(a, width))
  
}

area(5,3)

a


############################################################










#############################
# MORE COMPLEX FUNCTION EXAMPLES
#############################

### create a function that loops in two vectors,
### multiplies each component of the first vector with
### each component of the second vector
### and creates a matrix of the products


f <- function (x,y) {
  
  m <- c()
  
  for (i in 1:length(x)) {
  
  rw <- c()
  
  for (j in 1:length(y))  {
    
    rw <- c(rw, x[i] * y[j])
    
  }
  
  m <- rbind(m, rw)
  
  }
  
  return(m)

}

f(c(1,2,3), c(10, 20, 30))

###  create a function that loops through a matrix,
### computes the sum of component squares for each row
### and stores the result in a vector


f <- function (m) {

  vect_ssq <- c()

for (i in 1:nrow(m)) {
  
  sq <- c()
  
  for (j in 1:ncol(m))  {
    
    sq <- c(sq, m[i,j]^2)
    
  }

  
  vect_ssq <- c(vect_ssq, sum(sq))
  
}
  
  return(vect_ssq)

}

mat <- matrix(1:9, nrow = 3, byrow = TRUE)

f(mat)

############################################################









####################################################
# PRACTICAL EXAMPLE:
# CHECKING WHETHER A POSITIVE INTEGER IS A PERFECT SQUARE
####################################################

### a number is a perfect square if its square root is an integer

### first, our function will check whether the number is positive

### if yes, it will check whether it is an integer

### finally, it will check whether it is a perfect square

isperf <- function (x)  {
  
  if ( x<0 )  {
    
    print("The argument is a negative number!")
    
  } else {
    
      if ( round(x)!= x )   {
        
        print("The argument is not an integer!")
        
      }  else  {
        
        if (  round(sqrt(x)) == sqrt(x) )  {
          
          print("The argument is a perfect square.")
          
          return(sqrt(x))
          
          
        }   else  {
          
          print("The argument is not a perfect square.")
          
        }
        
      }
    
  }
  
}

isperf(64)

isperf(-5)

isperf(3.5)

isperf(42)

############################################################







###########################
# PRACTICAL EXAMPLE:
# SOLVING A QUADRATIC EQUATION
###########################

qd <- function (a, b, c)  {
  
     delta <- b^2 - 4*a*c
     
     if (delta<0) {
       
       print("The equation does not have real solutions.")
       
       return(delta)
       
     }  else  {
       
       if ( delta == 0)  {
         
         x1 <- (-b)/(2*a)
         
         print("The equation has one real solution.")
         
         return(list(delta, x1))
         
       }  else {
         
        
         x1 <- (-b+sqrt(delta))/(2*a)
         
         x2 <- (-b-sqrt(delta))/(2*a)
         
         print("The equation has two real solutions.")
         
         return(list(delta, x1, x2))
         
         
       }
       
     }
  
}

### solve the equation: 2*x^2 + 10*x + 8 = 0

qd(2, 10, 8)

### solve the equation: -x^2 - 4*x - 4 = 0

qd(-1, -4, -4)

### solve the equation: x^2 + x + 1 = 0

qd(1, 1, 1)

###################################################################









#########################################
# CREATING BINARY OPERATIONS USING FUNCTIONS
#########################################

### a binary operation is an operation that involves two terms

### we have already learned binary operations
### like %in% or %*%

### the users can create their own binary operations using functions
### these operations work well on either scalars, vectors or matrices

### to create a binary operation we must observe these rules:

### 1. the function must have two arguments

### 2. the function name must begin and end with a %

### 3. the function name must be put between double quotes

### create a binary operation that multiplies the squares of two numbers

"%a2b2%" <- function (a,b)  { a^2*b^2}

2 %a2b2% 3

### use the same operation with two vectors

c(1,2) %a2b2% c(3,4)

### use the same operation with two matrices

m1 <- matrix(1:4, nrow = 2, byrow = TRUE)

m2 <- matrix(7:10, nrow = 2, byrow = TRUE)

m1

m2

m1 %a2b2% m2

### a binary operation that computes the logarithm of the sum 
### of the inverses of two numbers
### (it will work only if the numbers are strictly positive)

"%logab%" <- function (a,b) { log(1/a+1/b) }

0.5 %logab% 0.1

0.5 %logab% 0

0.5 %logab% -0.5

