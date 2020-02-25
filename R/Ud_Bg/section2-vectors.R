
#################################
# CREATING VECTORS WITH THE c() FUNCTION
#################################

### a vector is a sequence of elements of the same type:
### numeric, character (string) or logical

### one of the most common ways to create vectors
### is using the c() function

x <- c(10, 20, 30, 40, 50)

x

### the elements of a vector are called components

### get the class and type of x

class(x)

typeof(x)

### create a character vector

y <- c("a", "b", "c")

y

class(y)

typeof(y)

### create a vector of logical values

z <- c(TRUE, FALSE, FALSE, TRUE)

z

class(z)

typeof(z)

### if we create a vector with components of different types...

n <- c(1, 2, "a", "b", TRUE, FALSE)

class(n)

typeof(n)

n

### get a vector length (number of components)

length(x)

### we can add values to an existing vector

x <- c(x, 100)

x

### if we nest two or more c() functions
### the result is one vector only

w <- c(c(1, 2, 3), 25)

w

s <- c(c(2, 4, 6), c(10, 12, 14))

s

###################################################


########################################
# CREATING VECTORS WITH THE COLON OPERATOR (:)
########################################

### the colon operator helps us create sequences of integers

x <- 1:5

x

### get the class and type

class(x)

typeof(x)

### let's create another vector with the same values, using the c() function

y <- c(1, 2, 3, 4, 5)

y

typeof(y)

### we can also create sequences in descending order

z <- 10:1

z

### we can also use variables with the colon operator

i <- 3

j <- 7

k <- i:j

k

typeof(k)

### we can combine the colon operator with the c() function

w <- c(3:9, 70)

w

typeof(w)

z <- c(1:10, 20:-5)

z

typeof(z)

###################################################


###################################
# CREATING VECTORS WITH THE rep() FUNCTION
###################################

### with rep() we create vectors with replicated values

### we must specify the value and the number of times to replicate it

x <- rep(5, 3)

x

### we can do the same for strings and logical values

y <- rep("ab", 6)

y

### we can combine rep() with c()
### to replicate an entire vector

z <- rep(c(1, 2, 3), 5)

z

### to replicate the vector element-wise
### we use the each argument

w <- rep(c(1, 2, 3), each = 5)

w

### we can also combine rep() with the colon operator

q <- rep(2:5, 3)

q

### to repeat the sequence element-wise we use each

s <- rep(2:5, each = 3)

s

### other functions that replicate values

### the function numeric() will get us a vector of zeros

t <- numeric(4)

t

### the function character() will get us a vector of empty strings

k <- character(4)

k

### the function logical() will get us a vector of FALSE values

u <- logical(4)

u

########################################################


######################################
# CREATING VECTORS WITH THE seq() FUNCTION
######################################

### the seq() function creates sequences of real numbers

### for this function we have to specify:
### the start value,the end value and the step (distance between components)
### the default step value is 1

x <- seq(from=1, to=10, by=0.5)

x

### if we enter the arguments in this exact order (start, stop, step)
### we don't have to write their names

y <- seq(1, 10, 0.5)

y

### other example

z <- seq(0, 20, 2)

z

### one more example

w <- seq(1, 10, 2)

w

### the sequence stops at 9, because the difference between 10 and 1
### is not a multiple of 2

### we can also create sequences in reversed order
### using a negative step

t <- seq(11, 1, -2)

t

### instead of specifying the step, we can specify the number of components
### in the sequence (the program will compute the step)
### we indicate the number of components using the length argument

### create a sequence of 10 numbers between 1 and 5

q <- seq(1, 5, length=10)

q

### the step is computed by dividing the difference 
### between the stop and start values
### to the number of components minus one

### in this case, the step is (5-1)/9 = 0.4444

### create a sequence of 100 numbers from -3 to 25

x <- seq(-3, 25, length = 100)

x

### the step is (25+3)/99 = 0.282828

### we can combine the seq() function with c() and rep()

y <- c(seq(1, 10, length=5), 30, 40)

y

z <- rep(seq(1, 3, 0.5), 3)

z


w <- rep(seq(1, 3, 0.5), each = 3)

w

###############################################################


##################################
# CREATING VECTORS OF RANDOM NUMBERS 
##################################


### the vectors of random numbers are useful in simulations
### and other statistical applications

### create a vector of discrete random numbers
### with the sample() function

### we must indicate the population
### and the number of values to be generated (sample)

### generate 12 random numbers from 1 to 100

n <- sample(100, 12)

n

### the population can be any vector

h <- 100:300

n <- sample(h, 10)

n

### in these examples, the selection was made without replacement
### (we got vectors of unique values)
### the replace option in the sample function() is set to FALSE by default

### if we set it to TRUE, the selection will be made with replacement

n <- sample(30, 15, replace = TRUE)

n

### if the sample is greater than the population
### the replace option must be set to TRUE

### generate 50 random numbers from 1 to 10

m <- sample(10, 50, replace = TRUE)  

m

### if we don't allow the replacement, we get an error message

m <- sample(10, 50)

### generating vectors of continuous random numbers
### using a few common statistical distributions

### to generate a vector of random numbers with a normal distribution
### we use the rnorm() function

### we must specify the number of values (trials), mean and standard deviation
### by default, mean is equal to 0 and standard deviation to 1

x <- rnorm(100, 10, 5)

x

x <- rnorm(100)

x

### to generate a vector of uniform random numbers
### we use the runif() function

### we must specify the number of trials and the range (lower and upper limit)
### be default, range is 0-1

y <- runif(100, 1, 5)

y

### to generate a vector of exponential random numbers
### we use the rexp() function

### we must specify the number of trials and the rate (1/mean)

z <- rexp(100, 1/50)

z


##################################################3



#####################
# CREATING EMPTY VECTORS 
#####################

### in some cases we need to initialize a vector before using it,
### by creating an empty vector

### there are several ways to do that

### using an empty c() function

x <- c()

x

typeof(x)

length(x)

### using the NULL value

y <- NULL

y

typeof(y)

### using an empty vector() function

z <- vector()  # will get us a logical empty vector

z

typeof(z)

### to add values to the empty vectors

x <- c(x, 1, 2)

x

typeof(x)

y <- c(y, 1, 2)

y

typeof(y)

z <- c(z, 1, 2)

z

typeof(z)

#####################################################


####################################
# INDEXING VECTORS USING NUMERIC INDICES 
####################################

### indexing a vector means accessing the vector components

### the indices (subscripts) must be put between square brackets

x <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

### access one component

x[2]

### access several components

x[c(1,3,8)]

### access components in order

x[2:5]

x[5:2]

### combine the methods above

x[c(1:4, 7)]

### access the last component (when we don't know the length)

x[length(x)]

### we can put the indices in a separate vector

n <- 3:5

x[n]

### the negative indices help us remove a component

### remove one component

x[-2]

### remove several components

x[c(-1, -3, -6)]

### remove components in order

x[-2:-4]

x[-4:-2]  # the order is not important here

### combine the methods above

x[c(-1:-5, -9)]

### remove the last component (when we don't know the length)

x[-length(x)]

### we cannot mix negative and positive indices

x[c(3, -7)]

### only zeros can be mixed with negative indices

x[c(0, -7)]

### this has the same effect as...

x[-7]

### we can add components to an existing vector
### (or edit components) using indices

x <- c(7, 8, 9, 10)

x[5] <- 11

x

x[2] <- 100

x

### we cannot do this if the vector was not pre-defined

p[1] <- 3

### so we must define the vector first

p <- c()

### then we can add components

p[1] <- 3

p[2] <- 7

p

### to insert a component into an existing vector
### we must "break" the vector

x <- c(9, 10, 11, 12)

### we want to insert 50 between 11 and 12

x <- c(x[1:3], 50, x[4])

x

###################################################3

####################################
# INDEXING VECTORS USING LOGICAL INDICES 
####################################

x <- c(1, 2, 3, 4)

### we need to access the second and the third components

### we create a logical vector of the same length

i <- c(FALSE, TRUE, TRUE, FALSE)

### we index the x vector

x[i]

### we can do this directly as well

x[c(FALSE, TRUE, TRUE, FALSE)]

###################################################



#######################
# NAMING VECTORS COMPONENTS 
#######################

### in some cases we might need to assign a name 
### to each component of a vector

### the vector below contains the salaries of three employees
### John, Andrew and Mary (in this order)

salary <- c(4000, 2700, 3200)

### to add the employees names, we use the names() function

names(salary) <- c("John", "Andrew", "Mary")

salary

### if a vector has names, we can access the components using them

salary["Andrew"]

### to remove names we assign the NULL value to the names() function

names(salary) <- NULL

salary


#########################################33

#################
# FILTERING VECTORS 
#################

### vector filtering (or slicing) is the operation of selecting
### the components that meet one or more conditions

### the filtering conditions must be put between square brackets

x <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

### select the components that are greater than 45

y <- x[x>45]

y

### select the components that are smaller than 72

y <- x[x<72]

y

### select the components that are equal to 30

y <- x[x==30]

y

### select the components that are different from 30

y <- x[x!=30]

y

### select the components that are greater than 27
### AND lower than 83

y <- x[x>27&x<83]

y


### select the components that are lower than 35
### OR greater than 71

y <- x[x<35|x>71]

y

### select the components that are lower than 60
### OR greater than 20

y <- x[x<60|x>20]

y


### select the components that are greater than 20
### AND different from 80

y <- x[x>20&x!=80]

y

### select the components that are greater than 20
### OR different from 80

y <- x[x>20|x!=80]

y

### to find out the indices of the components that meet a condition
### we can use the which() function

which(x==40)

which(x<54)

which(x>43)

### of course, we can store these indices in a vector to use them later

i <- which(x>43)

i

### to check whether a value can be found in a vector
### we can use the binary operator %in%

### it returns TRUE if the value is present

40 %in% x

86 %in% x


######################################3



##############
# all() AND any()
##############

### all() is a special function that checks whether all
### the components in a vector meet a certain condition

### the result is either TRUE or FALSE

x <- c(1, 3, 5, 7, 9, 11, 13, 15)

### check whether all the components are greater than zero

all(x>0)

### check whether all the components are lower than 50

all(x<50)

### check whether all the components are lower than 8

all(x<8)

### check whether all the components are greater than 10

all(x>10)

### check whether all the components are greater than 0
### and lower than 10

all(x>0&x<10)

### check whether all the components are greater than 0
### and lower than 35

all(x>0&x<35)

### check whether all the components are greater than 0
### or lower than 7

all(x>0|x<7)

### check whether all the components are greater than 4
### or lower than 7

all(x>4|x<7)

### check whether all the components are greater than 4
### or lower than 2

all(x>4|x<2)

### any() is a function that checks whether any component
### in a vector meets a certain condition

x

### is there a component (any) greater than 4?

any(x>4)

### is there a component lower than than 0?

any(x<0)

### is there a component equal to 11?

any(x==11)

### is there a component equal to 4?

any(x==4)

### is there a component lower than 10
### and greater than 3?

any(x<10&x>3)

### is there a component lower than 4
### and greater than 9?

any(x<4&x>9)

### is there a component lower than 4
### or greater than 9?

any(x<4|x>9)

### is there a component lower than 0
### or greater than 100?

any(x<0|x>100)

############################################################



##################################
# SUM AND PRODUCT OF VECTOR COMPONENTS
# BASIC STATISTICAL INDICATORS
##################################

x <- c(2, 4, 6, 15, 17, 19)

### to add the components of a numeric vector

sum(x)

### we can store the result in a new vector

y <- sum(x)

y

### to multiply the components of a numeric vector

prod(x)

### to compute the cumulative sum

cumsum(x)

### to compute the cumulative product

cumprod(x)

### compute the mean of the components

mean(x)

### compute the median of the components

median(x)

### compute the variance of the components

var(x)

### compute the standard deviation of the components

sd(x)


### get the summary statistics for a numeric vector

summary(x)

##########################################################



#####################
# VECTORIZED OPERATIONS
#####################

### vectorized operations are operations that apply to all the components
### of a vector simultaneously (in parallel)

### this is very effective feature of R that saves us from writing a lot of loops
### (vectorized operations are actually loops)

### the result of a vectorized operation is a vector

### here's the main vectorized operations

### adding a vector to a scalar

x <- c(1,2,3,4,5)

y <- x + 10

y

### multiplying a vector by a scalar

y <- x * 3

y

### computing the modulo values of the components
### (the remainders from dividing each component to a scalar)

y <- x %% 2

y

### raising the vector components at a power

y <- x ^ 2

y

### exponentiate each component

exp(x)

### extraction of the square root

sqrt(x)

x ^ (1/2)

### or extraction of any root

x ^ (1/3)

### compute the natural logarithm

log(x)

### compute the trigonometrical functions (sin, cos etc.)

sin(x)

cos(x)

### compute the absolute value

abs(x)

### round the vector components

z <- c(1.3, 3.7, 9.5)

round(z)

### round to the closest lower interger

floor(z)

### round to the closest higher interger

ceiling(z)

### round to the specified number of significant digits
### using the signif() function
### we have to specify the vector and the number of digits

w <- c(3.954, 7.200, 9.028)

signif(w, 1)

signif(w, 2)

signif(w, 3)

### compute the factorial of each element

factorial(x)


###############################################################





#######################
# MISSING VALUES IN VECTORS
#######################

### the missing (unknown) values are represented by the NA symbol

### here's a vector that stores the salaries of five employees

sal <- c(3500, 1800, 2400, NA, 2900)

### let's try to compute the average salary

mean(sal)

### we must remove the missing value first

sal2 <- na.omit(sal)

sal2

mean(sal2)

### a simpler way to do the same

mean(sal, na.rm = TRUE)

### the missing values count for the vector length

length(sal)

### to identify the missing values we can use the function is.na()

y <- is.na(sal)

y

#######################################################



###############
# SORTING A VECTOR
###############

x <- c(6, 8, 3, 11, 5, 10, 2, 17)

sort(x)

### the vector itself does not change

x

### to get the order of indices we can use the order() function

order(x)

### we can store the sorted values in an new vector

y <- sort(x)

y

### to sort the components in decreasing order

y <- sort(x, decreasing = TRUE)

y

### we can sort character and logical vectors as well

w <- c("z", "a", "n", "d")

sort(w)

sort(w, decreasing = TRUE)

q <- c(TRUE, FALSE, TRUE, FALSE)

sort(q)

sort(q, decreasing = TRUE)


###################################################




#################
# MINIMA AND MAXIMA
#################

### to get the minimum and maximum values in a vector
### we use the min() and max() functions

x <- c(4, 1, 7, 5, 12, 6)

min(x)

max(x)

### to determine the indices of the minimum and maximum values
### we use the which.min() and which.max() functions

which.min(x)

which.max(x)

### the functions pmin() and pmax() allow us to determine
### the minima and maxima from pairs of vector values

x

y <- c(2, 9, 7, 6, 10, 14)

y


pmin(x, y)

pmax(x, y)

##################################################

######################
# THE ifelse() FUNCTION
######################

### ifelse() is a simplified version of the if-else conditional statement
### it is applied to vectors

### the function syntax:

## ifelse(condition, action if true, action if false) ##

### condition - condition to be checked (tested)

### action if true - the action that the program must do if the condition is met

### action if false - the action that the program must do if the condition is NOT met

### the condition generates a logical vector
### that takes the value TRUE if the condition is satisfied
### and the value FALSE otherwise

### we will build an ifelse() function that checks whether the elements
### in a vector are even numbers
### if so, they will be divided to two, if not they will be copied

x <- c(6, 10, 9, 5, 20, 7, 16)

y <- ifelse(x%%2 == 0, x/2, x)

y

### create an ifelse() function that multiplies the component by 5
### if it is lower than or equal to 12 and by 3 if it is greater than 12

x <- c(2, 6, 15, 10, 20, 14)

y <- ifelse(x<=12, x * 5, x * 3)

y

### let's create another ifelse() function that does the following:
### if the component is greater than or equal to zero, it extracts the square root
### otherwise, it changes the component sign and then extracts the square root

x <- c(25, -36, 100, 0, -1, 49, 4, -68)

y <- ifelse(x>=0, sqrt(x), sqrt(-x))

y

### to remove warnings, we can do as follows

y <- sqrt(ifelse(x>=0, x, -x))

y

### one last example: an ifelse() function that returns 1
### if the square of the component is greater than 100 and 0 otherwise

x <- c(15, 6, 10, 30, 4)

y <- ifelse(x^2>100, 1, 0)

y

#######################################################





###########################
# ADDING AND MULTIPLYING VECTORS
###########################

### the vectors of the same length can be added and multiplied element-wise

x <- c(2, 4, 6, 8)

y <- c(10, 20, 30, 40)

z <- x + y

z

x - y

x * y

x / y

y / x

x %% y

y %% x

### if the vectors have different lengths
### the shorter vector is recycled

x <- c(1, 2, 3, 4)

y <- c(9, 10)

x + y

### y was recycled to (9, 10, 9, 10)

x * y

y %% x


##################################################






#######################
# TESTING VECTOR EQUALITY
#######################

### the comparisons between vectors are vectorized operations
### the comparison is done element-wise

x <- c(7, 10, 3, 9, 6)

y <- c(2, 14, 5, 15, 6)

### the operation below returns TRUE for the pairs of components
### where x is greater than y and FALSE for the pairs of components
### wherey y is greater than x

x > y

### the operation below returns TRUE for the pairs of components
### where y is greater than x and FALSE for the pairs of components
### wherey x is greater than y

y > x 

### the operation below returns TRUE for the pairs of components
### where x is equal to y

y == x

### to check whether two vectors are equal
### (all the components are the same)

x <- c(2, 4, 6)

y <- c(2, 4, 6)

all(y == x)

### the function all() can be used for other comparisons too

x <- c(7, 8, 9)

y <- c(2, 4, 6)

### check whether all components in x are greater than 
### their corresponding components in y

all(x>y)

### and conversely

all(y>x)

### the function any() can also be used for comparisons

x <- c(4, 5, 6, 8)

y <- c(2, 7, 10, 8)

### check whether at least one component in x is greater than 
### its corresponding component in y

any(x>y)

### and conversely

any(y>x)

### check whether at least one component in x is equal to 
### its corresponding component in y

any(x==y)

### another function that allows us to test vector equality
### is identical()

x <- c(1, 2, 3)

y <- c(1, 2, 3)

z <- c(1, 2, 5)

identical(x, y)

identical(x, z)

### another helpful function is all.equal()
### if the vectors are identical, it returns TRUE
### if not, it returns the mean difference between components

all.equal(x, y)

all.equal(x, z)  # mean difference is 0.6667: (5-3)/3

### one important issue

x <- c(4, 5, 6)

y <- 4:6

identical(x, y)

### these vectors are not identical, because they are of different types

typeof(x)

typeof(y)

### however, the all.equal() function returns TRUE

all.equal(x, y)

### that's because all.equal() evaluates the "near identity"
### it is interested only in the components values
### and not in the vectors type

#######################################################





##################
# VECTOR CORRELATION
##################

### we can use the Pearson correlation coefficient
### to assess the correlation between two numeric vectors

### the vectors must have the same length

### the vector of the employees' annual salaries (in thousands)

sal <- c(80, 66, 42, 40, 75, 82, 54, 44, 85, 83)

### the vector of the employees' education (in years of school completed)

edu <- c(15, 18, 12, 12, 16, 17, 13, 12, 17, 16)

### to compute the correlation we use the cor.test() function

cor.test(sal, edu)

#########################################################



