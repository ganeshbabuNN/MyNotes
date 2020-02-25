
###################
# WORKING WITH FACTORS
###################


### factors are categorical variables

### they take on a limited number of distinct values called levels

### to create a factor we use the factor() function

x <- c(4, 4, 6, 5, 6, 6, 6, 4, 4, 5, 4, 5, 6, 4)

f <- factor(x)

f

y <- c("a", "b", "c", "b", "a", "c", "b", "a", "a", "c")

ff <- factor(y)

ff

### to get the factor levels

levels(f)

levels(ff)

### we can assign labels to factor values

### suppose that in the x vector the codes 4, 5 and 6
### are actually car brands:
### Ford, Toyota and Mercedes, respectively

### so let's label the factor levels accordingly

x

f <- factor(x, labels = c("Ford", "Toyota", "Mercedes"))

f

### to change the codes we can use the levels option
### suppose that for some reason we have to change the codes as follows:
### 4 becomes Mercedes
### 6 becomes Toyota
### 5 becomes Ford

f <- factor(x, levels= c(5,6,4), labels = c("Ford", "Toyota", "Mercedes"))

x

f

### if the factor levels are ordered, we will use
### the ordered() function to create it

### suppose that in the vector x below the codes 1, 2 and 3
### represent respondents' education levels:
### elementary, middle and high, respectively

x <- c(1,1,3,2,2,1,3,3,2,1,1,2,3)

f <- ordered(x, levels=c(1,2,3), labels = c("elementary", "middle", "high"))

f

### even if we change the coding, the order stays the same

f <- ordered(x, levels=c(3,2,1), labels = c("elementary", "middle", "high"))

f

### it is not absolutely necessary to specify the levels
### (the program will take them as we have specified in the labels option)

f <- ordered(x, labels = c("elementary", "middle", "high"))

f

### get a factor length

length(f)

### index a factor (access the tenth value, for instance)

f[10]

### add a new value to a factor

f[14] <- "elementary"

f

### how to add a new level to a factor

### suppose we want to add the doctoral level to the factor f
### coded with 4
### in this case it is required to introduce the new level (4)

f <- ordered(x, levels=c(1,2,3,4), labels = c("elementary", "middle", "high", "doctoral"))

f

### now we can add the doctoral value

f[14] <- "doctoral"

f

### we cannot add a new value to a factor without defining that level first

f[15] <- "unknown"

f

########################################################

######################################
# SPLITTING A VECTOR USING A FACTOR LEVELS
######################################

## suppose we have a vector with the employees' salaries

sal <- c(1000, 1800, 2500, 1750, 1900, 2700, 2100, 1100)

## and a factor containing the same employee categories
## (worker - W, middle manager - MM, top manager - TM)

categ <- factor(c("W", "MM", "TM", "MM", "W", "TM", "MM", "W"))

### the function split() returns the vector values by factor levels

split(sal, categ)

### this function returns a list

s <- split(sal, categ)

class(s)

### the list names are the factor levels

names(s)

### we can also split by several factors

### let's add a new factor called gender

gender <- factor(c("Male", "Female", "Male", "Male", "Female", "Female", "Male", "Female"))

### split by category and gender

s <- split(sal, list(categ, gender))

s

### the result is a list again

class(s)


#############################################################

####################
# THE tapply() FUNCTION
####################

### the tapply() function applies an operation to a vector values
### broken down by factor levels

sal <- c(1000, 1800, 2500, 1750, 1900, 2700, 2100, 1100)

categ <- factor(c("W", "MM", "TM", "MM", "W", "TM", "MM", "W"))

### compute the mean salary by category

tapply(sal, categ, mean)

### tapply() returns an array

t <- tapply(sal, categ, mean)

class(t)

### let's add a new factor: gender

gender <- factor(c("Male", "Female", "Male", "Male", "Female", "Female", "Male", "Female"))

### compute the mean by both category and gender

t <- tapply(sal, list(categ, gender), mean)

t

### this time tapply() returned a matrix

class(t)

#########################################################33







################
# THE by() FUNCTION
################

### by() does a similar thing as tapply()

### it applies an operation to a vector values
### broken down by factor levels

sal <- c(1000, 1800, 2500, 1750, 1900, 2700, 2100, 1100)

categ <- factor(c("W", "MM", "TM", "MM", "W", "TM", "MM", "W"))

### compute the mean salary by category

by(sal, categ, mean)

b <- by(sal, categ, mean)

### the object b is of a special class called "by"

class(b)

typeof(b)

### we can index b as a vector

b[2]

### we can convert b into a list as well

b <- as.list(b)

class(b)

b

### now we can index the object b as a list

b$TM

#################################################################
