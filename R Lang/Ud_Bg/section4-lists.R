
#######################################
# CREATING LISTS WITH THE list() FUNCTION
#######################################

### a list is a data structure that can contain objects of different types

### let's create a list of four employees in a company
### Mark, Tom, Laura and Sandra
### for each employee we have the following information

### name, age, gender, annual salary, whether they are managers or not

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees

### we can create a list without object names as well
### (but it is preferable to have names)

employees2 <- list(c("Mark", "Tom", "Laura", "Sandra"),
                  c(49, 28, 35, 25),
                  c("m", "m", "f", "f"),
                  c(75000, 62000, 55000, 46000),
                  c(TRUE, FALSE, FALSE, FALSE))

employees2

### if there are no names, 
### the objects are referred using indices between double brackets
### for example, [[1]]

### getting object class and type

class(employees)

typeof(employees)

### print list structure

str(employees)

### print the objects names

names(employees)

### the objects in a list DO NOT have to be of the same length

### let's make a list with that contains the dishes ordered 
### by three friends at a restaurant, as well as their total bill
### their names are Fred, Jack and Peter

lunch <- list(Fred=c("omelette", "fried potatos", "chicken", "icecream"),
              Jack=c("salad", "beef steak"),
              Peter=c("salad", "lasagna", "pancakes"),
              bill = 100)

lunch

str(lunch)

###############################################


#########################################
# CREATING LISTS WITH THE vector() FUNCTION
#########################################

### we will create the same list of employees as in the previous lecture

### first we create an empty list
### by setting the mode parameter to list

employ <- vector(mode = "list")

class(employ)

### now we can add objects to our list

employ[["names"]] <- c("Mark", "Tom", "Laura", "Sandra")

employ[["age"]] <- c(49, 28, 35, 25)

employ[["gender"]] <- c("m", "m", "f", "f")

employ[["salary"]] <- c(75000, 62000, 55000, 46000)

employ[["manager"]] <- c(TRUE, FALSE, FALSE, FALSE)

employ

#######################################






############################
# INDEXING LISTS USING BRACKETS
############################

### to access objects we use double brackets
### to access individual elements we use simple brackets

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

### extract the vector of names

employees[["names"]]

x <- employees[["names"]]

x

class(x)

typeof(x)

### extract the vector of ages

employees[["age"]]

### if we don't have names, we can use the object indices

employees[[1]]

employees[[5]]

### to access an individual element, we put its index
### betwen simple brackets

### get Laura's name

employees[["names"]][3]

employees[[1]][3]

### alternatively

employees[[c(1,3)]]

### other examples

### get Tom's salary

employees[["salary"]][2]

employees[[4]][2]

employees[[c(4,2)]]

### get Mark's, Tom's and Laura's salaries
     
employees[["salary"]][1:3]

### get Mark's and Sandra's salaries

employees[["salary"]][c(1,4)]

### to remove elements we use negative indices

employees[["salary"]][-2]

employees[["age"]][-1:-3]

######################################################






####################################
# INDEXING LISTS USING THE OBJECTS NAMES
####################################

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees

### access the vectors of names, gender, salary

employees$names

employees$gender

employees$salary

### get Tom's salary

employees$salary[2]

### get Tom's, Laura's and Sandra's salaries

employees$salary[2:4]

### we can also remove elements (Mark's salary, in this case)

employees$salary[-1]

### create a sub-list with ages and salaries only

emp2 <- list(age=employees$age, salary=employees$salary)

class(emp2)

emp2

################################################





######################
# EDITING VALUES IN LISTS
######################

### we can edit the list elements directly

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees

### change Tom's salary from 62000 to 64000

employees[["salary"]][2] <- 64000

### or

employees$salary[2] <- 64000

### Laura has become a manager

employees[["manager"]][3] <- TRUE

employees

### change all the employees' salaries

employees[["salary"]] <- c(85000, 70000, 69000, 48000)

employees

###############################################################





##############################
# ADDING END REMOVING LIST OBJECTS
##############################

### we can add new objects to lists directly

employees <- list(names=c("Mark", "Tom", "Laura", "Sandra"),
                  age=c(49, 28, 35, 25),
                  gender=c("m", "m", "f", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, FALSE, FALSE, FALSE))

employees

### add the number of monthly working hours for each employee 

employees$hours <- c(200, 220, 235, 215)

employees

### to remove an object, we assign the NULL value to it

employees$hours <- NULL

employees

### we can also add new elements to the existing objects

### add a new employee with the following data:
### name: Ken
### age: 58
### gender: male
### annual salary: 43000
### manager: no

employees[["names"]][5] <- "Ken"

employees[["age"]][5] <- 58

employees[["gender"]][5] <- "m"

employees[["salary"]][5] <- 43000

employees[["manager"]][5] <- FALSE

employees

################################################






###########################
# APPLYING FUNCTIONS TO LISTS
###########################

### to perform operations with list elements 
### we use the lapply() function

### this function can be used only when 
### the list elements are of the same type (numeric)

### create a list of car technical specifications:
### engine size (engine), horsepower (horse) and curb weight (weight)

carspec <- list(engine=c(1.8, 3.2, 3.5, 1.8, 2.8, 4.2),
                  horse=c(140, 225, 210, 150, 200, 310),
                  weight=c(2639, 3517, 3850, 2998, 3561, 3902))

carspec

### in the lapply() function we have to specify:
### the list name and the function to apply to the objects

### compute the average value for each object

lapply(carspec, mean)

### the result is a list with the same length as the initial list

l <- lapply(carspec, mean)

l

class(l)

typeof(l)

### compute the standard deviation for each object

lapply(carspec, sd)

### compute the sum and product for each object

lapply(carspec, sum)

lapply(carspec, prod)

### compute the cumulative sum and product for each object

lapply(carspec, cumsum)

lapply(carspec, cumprod)

### compute the logarithm of each value (if all the values are strictly positive)

lapply(carspec, log)

### and so on

### we can also apply an user-defined function

f <- function (x) { x^2 + 3 * x }

lapply(carspec, f)

### sapply() is a simplified version of lapply()

### it has the same syntax, 
### but it returns a vector, not a list

sapply(carspec, mean)

s <- sapply(carspec, mean)

class(s)

typeof(s)

s

names(s)

### the vector has the same length as the number of objects in the list
### and its components have the same names as the list objects

### however, sapply() will return a list if we set
### the option simplify to FALSE

s <- sapply(carspec, mean, simplify = FALSE)

s

class(s)

### what happens if the list objects are not of the same type?

carspec2 <- list(make=c("Toyota", "Honda", "Renault", "Mazda", "Volkswagen", "BMW"),
                 engine=c(1.8, 3.2, 3.5, 1.8, 2.8, 4.2),
                 horse=c(140, 225, 210, 150, 200, 310),
                 weight=c(2639, 3517, 3850, 2998, 3561, 3902))

### the lapply() function returns NA for the make object
### plus an error message

lapply(carspec2, mean)

### so does the sapply() function

sapply(carspec2, mean)

#############################################################

#########################
# PRACTICAL LIST EXAMPLE:
# REGRESSION ANALYSIS OUTPUT
#########################

### in R, the regression analysis output is actually a list
### we can use what we have learned until now to "read" this output

### we will run a regression analysis to determine whether
### a car price is influenced by engine size and horse power

### the vector of the dependent variable (price in thousands)

price <- c(21.5, 28.4, 42.0, 23.9, 33.9, 62.0, 26.9, 33.4, 39, 21.9)

### the vectors of the predictors

engine <- c(1.8, 3.2, 3.5, 1.8, 2.8, 4.2, 2.5, 2.8, 2.8, 3.1)

horse <- c(140, 225, 210, 150, 200, 310, 170, 193, 195, 175)

### fit the regression model

fit <- lm(price~engine+horse)

### fit is a list

typeof(fit)

names(fit)

### let's print a few list objects

### the regression coefficients

fit$coefficients

### the coefficient of the variable engine

fit$coefficients[2]

### the intercept

fit$coefficients[1]

### the regression equation

fit$call

### the variables in the model

fit$model

### the predicted values of the response variable (price)

fit$fitted.values

### the residuals (differences between predicted and actual values)

fit$residuals

##################################################

