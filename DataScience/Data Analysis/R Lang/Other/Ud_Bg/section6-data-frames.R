
###################
# CREATING DATA FRAMES
###################

### like lists, data frames are collections of objects
### unlike lists, the objects in a data frame must have the SAME length

### in essence, a data frame is a list where all the objects have the same length

### to create a data frame we use the data.frame() function

### create two vectors of the same length (10)

x <- 1:10

y <- rnorm(10)

dt <- data.frame(x, y)

dt

View(dt)

### the objects in a data frame may be also of character or logical type

z <- c("a","b","c","d","e","f","g","h","i","j")

w <- c(TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE)

dt <- data.frame(x,y,z,w, stringsAsFactors = FALSE)

dt

View(dt)

### the objects (columns) in a data frame are also called variables

### the rows are also called entries or observations

### by default, the data frames rows don't have names
### (the row.names option in the data.frame() function is set to NULL)
### however, we can name the rows if we want to

dt <- data.frame(x,y,z,w, 
                row.names = c("row1","row2","row3","row4","row5","row6","row7","row8","row9","row10"),
                stringsAsFactors = FALSE)


View(dt)

### get object class and type

class(dt)

typeof(dt)

### get data frame dimensions

dim(dt)

nrow(dt)

ncol(dt)

### get the data frame structure

str(dt)

###########################################################

#####################################
# LOADING DATA FRAMES FROM EXTERNAL FILES
#####################################

### in the R program we can read a file in table format (.csv or .txt)
### and create a data frame from it

### we use the functions read.csv() and read.delim()

### first we have to make sure that the directory that contains
### the file is our working directory

### to read a .csv file we use the read.csv() function

bm <- read.csv("bank-marketing.csv", header = TRUE, sep = ";", stringsAsFactors = FALSE)

View(bm)

### if the table in the external file does not have a header
### we set header = FALSE (by defaut it is TRUE)

### if the .csv file is already organized in columns
### we do not have to specify any separator

car <- read.csv("carsales.csv", stringsAsFactors = FALSE)

View(car)

### to read a text file we can either use read.csv() or read.delim()

cpu <- read.csv("cpu-performance-data.txt", sep = ",", header = FALSE, stringsAsFactors = FALSE)

View(cpu)

### alternatively

cpu <- read.delim("cpu-performance-data.txt", sep = ",", header = FALSE, stringsAsFactors = FALSE)

View(cpu)

### if the source file has no header, the program automatically
### assigns names to the columns (variables): V1, V2 and so on

### we will be able to change these names later on, if we want to

#############################################################################






#####################################
# WRITE A DATA FRAME IN AN EXTERNAL FILE
#####################################

### this is useful when we have created a data frame
### and want to save it on the hard disk for later use

### create the data frame

x <- 1:10

y <- rnorm(10)

z <- c("a","b","c","d","e","f","g","h","i","j")

w <- c(TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE)

dt <- data.frame(x,y,z,w, stringsAsFactors = FALSE)

View(dt)

### save the data frame on the hard disk as a .csv file
### (it will be written in the working directory)

write.csv(dt, file = "example.csv")

### to omit row names

write.csv(dt, file = "example2.csv", row.names = FALSE)

### create a .csv file with spaces as separators

write.table(dt, file = "example3.csv", row.names = FALSE)


#############################################################################

##############################
# INDEXING A DATA FRAME AS A LIST
##############################

### data frames are lists, so they can be indexed like lists

bm <- read.csv("bank-marketing.csv", header = TRUE, stringsAsFactors = FALSE, sep = ";")

View(bm)

### access the second column (job)

bm[[2]]

### access the second column (job), row 10

bm[[2]][10]

### get the variable balance

bm[["balance"]]

### get the fourth value of the variable balance

bm[["balance"]][4]

### other way to get the variable balance

bm$balance

### get the fifth value of the variable balance

bm$balance[5]

### get the second to the seventh value of the variable balance (rows 2-7)

balance <- bm$balance[2:7]

### the result is a vector

balance

class(balance)

######################################################






##############################
# INDEXING A DATA FRAME AS A MATRIX
##############################

### data frames can be viewed as matrices as well
### because they have a rectangular form
### (though the values in a data frame are not necessarily of the same type)
### so they can be indexed as matrices, with simple brackets

bm <- read.csv("bank-marketing.csv", header = TRUE, stringsAsFactors = FALSE, sep = ";")

View(bm)

### get the values in the third row

bm[3,]

### get the values in the sixth column (balance)

bm[,6]

### the result of the above is a vector

x <- bm[,6]

class(x)

### if we omit the comma, the result will be a data frame

y <- bm[6]

View(y)

class(y)

### get the values in the third row, fourth column

bm[3,4]

### get the values in the rows one to four

bm[1:4,]

### get the values in columns one to three

bm[,1:3]

### get the values in the second row, columns one to three

bm[2, 1:3]

### get the values in rows two to four, columns five to eight

bm[2:4, 5:8]

### get the values in rows two to four, columns five to eight and elevem

bm[2:4, c(5:8, 11)]

### to remove rows and columns we use negative indices

### remove the first row

bm1 <- bm[-1,]

View(bm1)

### remove the third column (marital)

bm1 <- bm[,-3]

View(bm1)

### remove rows one to five and columns three to five 
### (marital, education, default)

bm1 <- bm[-1:-5,-3:-5]

View(bm1)

##########################################################



##############################################
# SELECTING A RANDOM SAMPLE OF ROWS (OBSERVATIONS)
##############################################

### this operation is very useful in resampling, for example

### we will extract 100 rows, at random, from the bm data frame

bm <- read.csv("bank-marketing.csv", header = TRUE, stringsAsFactors = FALSE, sep = ";")

View(bm)

### get the number of rows in our data frame

nrows <- nrow(bm)

nrows

### generate 100 random integers from 1 to nrows, without replacement

i <- sample(nrows, 100)

i

### i will be the vector of indices for our new data frame

bm1 <- bm[i,]

View(bm1)

### we can also create a data frame with the remaining rows

bm2 <- bm[-i,]

View(bm2)


##########################################################






#####################
# FILTERING DATA FRAMES
#####################

### filtering (slicing) means selecting the rows (entries)
### that meet one or several conditions

### the condition(s) must be put between square brackets

### we will filter the data frame bm

bm <- read.csv("bank-marketing.csv", header = TRUE, stringsAsFactors = FALSE, sep = ";")

View(bm)

### select the rows where the balance is greater than 1000

bm1 <- bm[bm$balance > 1000,]

View(bm1)

### select the rows where the contact duration is lower than 150

bm1 <- bm[bm$duration < 150,]

View(bm1)

### select the rows where the contact duration is equal to 185

bm1 <- bm[bm$duration == 185,]

View(bm1)

### select the rows where the education level is tertiary

bm1 <- bm[bm$education == "tertiary",]

View(bm1)

### select the rows where the education level is tertiary
### and the balance is greater than 2000

bm1 <- bm[bm$education == "tertiary" & bm$balance > 2000,]

View(bm1)

### select the rows where the education level is tertiary
### and the marital status is married

bm1 <- bm[bm$education == "tertiary" & bm$marital == "married",]

View(bm1)

### we can also select the columns to show in the new data frame

### select the rows where the education level is tertiary
### and the marital status is married
### but only the first four columns and the balance

bm1 <- bm[bm$education == "tertiary" & bm$marital == "married", c(1:4,6)]

View(bm1)

#######################################################################









###########################
# EDITING VALUES IN DATA FRAMES
###########################

### we can edit a data frame directly
### by assigning a value to any element

bm <- read.csv("bank-marketing.csv", header = TRUE, stringsAsFactors = FALSE, sep = ";")

View(bm)

### suppose we want to change the marital status
### for the customer in row 2 to married

bm[2,3] <- "married"

### a more convenient way is to mention the column name

### change the balance for the first customer to 1000

bm$balance[1] <- 1000

### change the loan value for the seventh customer to no

bm$loan[7] <- "no"

### we can change more than one element simultaneously

### change the balance value for rows 4, 5 and 6
### to 400, 500 and 600 respectively

bm$balance[4:6] <- c(400,500,600)

##############################################################





####################################
# ADDING ROWS AND COLUMNS TO DATA FRAMES
####################################

### we can add rows and columns to data frames
### using the rbind() and cbind() functions

car <- read.csv("carsales.csv", header = TRUE, stringsAsFactors = FALSE)

View(car)

### add a new car with the following data
### price: 26.4
### engine: 3.2
### horse: 225
### weight: 3500

car2 <- rbind(car, c(26.4, 3.2, 225, 3500))

View(car2)

### add a new variable, formed by uniform random numbers
### called x

x <- runif(nrow(car))

car3 <- cbind(car, x)

View(car3)

### we can add several columns at once

z <- runif(nrow(car), 1, 2)

w <- runif(nrow(car), 99, 100)

car4 <- cbind(car, z, w)

View(car4)

### we can compute a new variable based on the existing ones

### create a new variable that stores the halved car prices

car$price2 <- car$price / 2

### create another variable that stores the ratio price/weight

car$pw <- car$price / car$weight

### to delete a column (variable)

car$pw <- NULL

######################################






####################################
# NAMING ROWS AND COLUMNS IN DATA FRAMES
####################################

### to name or rename rows and columns we use
### the rownames() and colnames() functions, respectively

### let's assign the numbers from 1001 to 1155
### as row names for the data frame car

car <- read.csv("carsales.csv", header = TRUE, stringsAsFactors = FALSE)

View(car)

x <- 1001:1155

rownames(car) <- x

### we can edit the row names individually

### change the name of the third row

rownames(car)[3] <- "BMW"

### change the names of the rows four, five and six

rownames(car)[4:6] <- c("Renault", "Mazda", "Ford")

### change the name of the variable weight in curbweight

colnames(car)[4] <- "curbweight"

############################################################






###############################
# APPLYING FUNCTIONS TO DATA FRAMES
###############################

### since data frames are both lists and matrices
### we can use the apply() and lapply() functions with them
### but only if the variables are of the same type (numeric)

car <- read.csv("carsales.csv", header = TRUE, stringsAsFactors = FALSE)

View(car)

### compute the variable means using the apply() function

m <- apply(car, 2, mean)

m

### m is a vector

class(m)

### compute the variable means using the lapply() function

ml <- lapply(car, mean)

ml

### ml is a list

class(ml)

### if we want to get a vector, we can also use the sapply() function

sm <- sapply(car, mean)

sm

class(sm)

### if we set the simplify option to FALSE
### the sapply() function will return a list

sm2 <- sapply(car, mean, simplify = FALSE)

sm2

class(sm2)

### what happens if we try to use apply()
### when all the variables are not numeric?

bm <- read.csv("bank-marketing.csv", header = TRUE, stringsAsFactors = FALSE, sep = ";")

View(bm)

apply(bm, 2, mean)

### the apply() function returns NA for all the variables

lapply(bm, mean)

### the lapply() function returns NA for the non-numeric variables

sapply(bm, mean)

### the sapply() function returns NA for the non-numeric variables

#####################################################################






##################
# SORTING DATA FRAMES
##################

car <- read.csv("carsales.csv", header = TRUE, stringsAsFactors = FALSE)

View(car)

### to order a data frame we use the order() function

### this function must be put between square brackets

### sort by price in ascending order

car2 <- car[order(car$price),]

View(car2)

### sort by price in descending order

car2 <- car[order(-car$price),]

### alternatively

car2 <- car[order(car$price, decreasing = TRUE),]

### sort by engine size and horsepower, ascending

car2 <- car[order(car$engine, car$horse),]

### sort by engine size ascending and horsepower descending

car2 <- car[order(car$engine, -car$horse),]

### we can sort by character variables as well

bm <- read.csv("bank-marketing.csv", header = TRUE, stringsAsFactors = FALSE, sep = ";")

View(bm)

### sort by education, first ascending then descending

bm2 <- bm[order(bm$education),]

View(bm2)

bm2 <- bm[order(bm$education, decreasing = TRUE),]

### it is not allowed to put the minus sign before a character variable

bm2 <- bm[order(-bm$education),]


#######################################################################






#####################
# SHUFFLING DATA FRAMES
#####################

### shuffling means ordering the entries at random

car <- read.csv("carsales.csv", header = TRUE, stringsAsFactors = FALSE)

View(car)

### create a vector of uniform random numbers

rnd <- runif(nrow(car))

car <- car[order(rnd),]


#######################################################################









##################
# MERGING DATA FRAMES
##################

### we can easily merge two data frames that have 
### two or more variables with the same name

### the merging variables should have unique values
### for example ID, SSN, computer IP etc.

### create a new data frame, employ
### it will contain the employees IDs,
### names and annual salaries

id <- c(101, 102, 103, 104, 105)

name <- c("Mark", "Lisa", "John", "Anna", "Peter")

salary <- c(62000, 75000, 48000, 42000, 56000)

employ <- data.frame(id, name, salary)

employ

### the data frame hours will contain (for the same employees)
### the IDs and the number of working hours in the last month

h <- c(235, 220, 247, 215, 260)

hours <- data.frame(id, h)

hours

### merge the data frames using the merge() function

### the merging variable is indicated with the by option

dt <- merge(employ, hours, by = "id")

dt


### if the merging variables have different names (but same values)
### we must indicate them using the options by.x and by.y

### the data frame birth will contain the birth places
### for the same employees
### this time the IDs are stored in a variable called code

code <- c(104, 105, 101, 103, 102)

bplace <- c("Boston", "New York", "Chicago", "Dallas", "Seattle")

birth <- data.frame(code, bplace)

birth

dt

employ2 <- merge(dt, birth, by.x = "id", by.y = "code")

employ2

### by.x indicates the merging variable for the first data frame
### by.y indicates the merging variable for the second data frame

###########################################################################


