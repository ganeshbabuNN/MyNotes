
#########################################
# CREATING MATRICES WITH THE matrix() FUNCTION
#########################################

### a matrix is a collection of data elements of the same type
### arranged in a two-dimensional rectangle

### to create a matrix we must indicate the elements, 
### as well as the number of rows (nrow) and columns (ncol)

m <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)

m

### by default, any matrix is created column-wise

### to change that we set the byrow option to TRUE

m <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = TRUE)

m

### it is not necessary to specify both the number of rows and columns
### we can only indicate one of them 
### the number of elements must be a multiple of the number of rows or columns

m <- matrix(c(1,2,3,4,5,6), nrow = 2)

m

m <- matrix(c(1,2,3,4,5,6), ncol = 3)

m

m2 <- matrix(c(1,2,3,4,5,6,7), nrow = 2)

### get class and type

class(m)

typeof(m)

### get the matrix dimensions

dim(m)

nrow(m)

ncol(m)

######## other matrix examples

m <- matrix(1:12, nrow = 4, byrow = TRUE)

m

typeof(m)

m <- matrix(rep(8, 9), nrow = 3)

m

m <- matrix(seq(1,5,length=20), nrow = 5, byrow = TRUE)

m

m <- matrix(rnorm(20), nrow = 5, byrow = TRUE)

m

### we can also create matrices containing
### character or logical data elements

################################################




#########################################
# CREATING MATRICES WITH rbind() AND cbind()
#########################################

### rbind() and cbind() allow us to bind vectors
### in order to create a matrix

### these vectors must have the same length

x <- c(1,2,3,4)

y <- c(10,11,12,13)

z <- c(20,30,40,50)

### if we use rbind(), our vectors will be rows

m <- rbind(x, y, z)

m

class(m)

typeof(m)

### we can bind the vectors in any order

m <- rbind(y, z, x)

m

### we can also bind the same vector several times

m <- rbind(x, y, x, z)

m

### it is not necessary to create the vectors first
### we can enter them directly in the rbind() function

m <- rbind(c(1, 2, 3), c(7, 8, 9), c(21, 22, 23))

m

### if we use cbind() the vectors will be columns

m <- cbind(x, y, z)

m

class(m)


##############################################################



##############################
# NAMING MATRICES ROWS AND COLUMNS
##############################

### we can name rows and columns when we create the matrix
### using the dimnames option in the matrix() function

m <- matrix(c(1,2,3,4,5,6), nrow = 2, 
            dimnames = list(c("row1", "row2"), c("col1", "col2", "col3")))

m

### alternatively, we can name rows and columns at any time
### after creating the matrix
### using the functions rownames() and colnames()

m <- matrix(c(1,2,3,4,5,6), nrow = 2)

m

rownames(m) <- c("row1", "row2")

m

colnames(m) <- c("col1", "col2", "col3")

m

### to remove names

rownames(m) <- NULL

m

colnames(m) <- NULL

m

############################################




#################
# INDEXING MATRICES
#################

### indexing means accessing one or several matrix elements

### indices must be put between square brackets

### we must use two indices: one for the row
### and the other one for the column

m <- matrix(1:16, nrow = 4, byrow = TRUE)

m

### access the element on row 2, column 3

m[2,3]

### access the element on row 4, column 1

m[4,1]

### access the element on row 2, column 2
### and the element on row 4, column 3

c(m[2,2], m[4,3])

### access the row 2

m[2,]

### we can put the elements in this row in a vector

x <- m[2,]

x

### access column 3

m[,3]

### access the elements on row 2, columns 2,3 and 4

m[2,2:4]

m

### access the elements on column3, rows 1 and 4

m[c(1,4),3]

### access the elements on rows 2 and 4, columns 2 and 4

m

m[c(2,4), c(2,4)]

### access the elements on rows 2, 3 and 4, columns 3 and 4

m[2:4, 3:4]

### access the elements at the intersection of rows 1 and 2 with columns 1 and 2
### and the elements at the intersection of rows 3 and 4 with columns 3 and 4
### (the result will be a vector)

m

c(m[1:2, 1:2], m[3:4, 3:4])

### access the fifth element, in column-wise order

m[5]

### access the fifth and the seventh element, in column-wise order

m[c(5, 7)]

### access the fifth, the sixth and the seventh element, in column-wise order

m[5:7]

m

### to remove elements we use negative indices

### access the row 2 less the element on the third column

m[2, -3]

### access the row 4 less the elements on the second and fourth column

m[4, c(-2, -4)]

### access the rows 2, 3 and 4 less the element on the first column

m[2:4,-1]



############################################



#################
# FILTERING MATRICES
#################

### filtering means accessing elements that meet a certain condition
### this condition must be put between square brackets

### create a 4x4 matrix of 16 discrete random numbers between 1 to 100

i <- sample(100, 16, replace = TRUE)

m <- matrix(i, nrow = 4, byrow = TRUE)

m

### select the elements that are greater than 50

m[m>50]

### select the elements that are smaller than 70

m[m<70]

### select the elements that are smaller than 70 and greater than 30

m[m<70&m>30]

### select the elements that are greater than 70 or smaller than 20

m[m>70|m<20]

### select the elements that are equal to a given value

m[m==99]

### select the elements that are equal to a given value or lower than 30

m[m==99|m<30]

### to find out the indices of the elements that meet a condition
### we use the which() function

m

which(m==14)

### the indices are returned in column-wise order

m

which(m>50)


####################################################




##########################
# EDITING ELEMENTS IN MATRICES
##########################

### we can edit elements in matrices by assigning values to them directly

m <- matrix(1:16, nrow = 4, byrow = TRUE)

m

### assign the value 100 to the element on row 3, column 4

m[3,4] <- 100

m

### assign the value 100 to the seventh element, in column-wise order

m[7] <- 100

m

### assign the value 100 to the elements on row 1, columns 2, 3 and 4

m[1, 2:4] <- 100

m

### assign the value 0 to the entire second row

m[2,] <- 0
  
m

### we can also assign multiple values at once

### assign the values 31, 32 and 33 to the elements on row 1, columns 2, 3 and 4

m[1, 2:4] <- c(31, 32, 33)

m

### assign the values 51 to 54 to the entire third column

m[,3] <- 51:54

m

### assign the values 1000 and 2000 to the seventh and the nineth elements
### in column-wise order

m[c(7, 9)] <- c(1000, 2000)

m


###############################################



##############################################
# ADDING AND DELETING ROWS AND COLUMNS FROM A MATRIX 
##############################################

m <- matrix(1:16, nrow = 4, byrow = TRUE)

m

### to add rows we use the rbind() function

m <- rbind(m, c(50, 60, 70, 80))

### the vector length must be equal to the number of columns in the matrix

m

### alternatively

x <- c(8, 10, 12, 14)

m <- rbind(m, x)

m

### in this case the new row will have the vector name
### if we don't want that, we can remove the name

rownames(m) <- NULL

### we can also use rbind() to bind two or more matrices
### these matrices must have the same number of columns

m2 <- matrix(21:28, nrow = 2, byrow = TRUE)

m2

m <- rbind(m, m2)

m

### to add columns in a matrix we use the cbind() function

m <- matrix(1:16, nrow = 4, byrow = TRUE)

m

m <- cbind(m, c(100, 101, 102, 103))

### the vector length must be equal to the number of rows in the matrix 

m

### we can also use cbind() to bind two or more matrices
### these matrices must have the same number of rows

m2 <- matrix(51:58, nrow = 4, byrow = TRUE)

m2

m <- cbind(m, m2)

m

### to remove rows and column we simply use negative indices

m <- matrix(1:16, nrow = 4, byrow = TRUE)

m

### remove the second row (and create a new matrix, m1)

m1 <- m[-2,]

m1

### remove the first column

m1 <- m[,-1]

m1

### remove the first and the third row

m1 <- m[c(-1, -3),]

m1

### remove the first and the third column

m1 <- m[,c(-1, -3)]

m1

### remove the first, the second and the third row

m1 <- m[-1:-3,]

m1

### remove the first, the second and the third column

m1 <- m[,-1:-3]

m1

########################################################




################
# MINIMA AND MAXIMA 
################

### create a 4x5 matrix of 20 random numbers

i <- sample(100, 20)

m <- matrix(i, nrow = 4, byrow = TRUE)

m

### get the minimum and maximum value, overall

min(m)

max(m)

### get the minimum value in the third row

min(m[3,])

### get the maximum value in the fourth column

max(m[,4])

### to get the indices of the minimum and maximum values
### we use the functions which.min() and which.max()

### the indices of the overall minimum and maximum values

m

which.min(m)

which.max(m)

### the index of the minimum value in the third row

which.min(m[3,])

### the index of the maximum value in the fifth column

which.max(m[,5])

### we can also use the pmin() and pmax() functions
### to get the minima and maxima for pairs of rows and columns

### get the minima for the rows 2 and 3

m

pmin(m[2,], m[3,])

### get the maxima for the rows 2 and 3

pmax(m[2,], m[3,])


################################################



###############################
# APPLYING FUNCTIONS TO MATRICES (1)
###############################

### to perform operations on the matrix rows and columns
### we can use the apply() function

### the arguments of the apply() function are:

### the matrix name
### the dimension we apply the function to (1 for rows, 2 for columns)
### the function to apply

### create a 4x4 matrix

m <- matrix(1:16, nrow = 4)

m

### compute the sum of the elements on each row and column, respectively

apply(m, 1, sum)

apply(m, 2, sum)

### compute the product of the elements on each row and column, respectively

apply(m, 1, prod)

apply(m, 2, prod)

### compute the mean for each row and column, respectively

apply(m, 1, mean)

apply(m, 2, mean)

### compute the standard deviation for each row and column, respectively

apply(m, 1, sd)

apply(m, 2, sd)

###########################################################3





###############################
# APPLYING FUNCTIONS TO MATRICES (2)
###############################

### create a 4x4 matrix

m <- matrix(1:16, nrow = 4, byrow = TRUE)

m

### compute the cumulative sums for the data values in each row

apply(m, 1, cumsum)

### the cumulative sums are computed by row,
### BUT the matrix is built column-wise (the default way in R)

### to built the same matrix row-wise
### we have to use the matrix() function

m

m1 <- matrix(apply(m, 1, cumsum), nrow = 4, byrow = TRUE)

m1

### compute the cumulative sums for each column

m

apply(m, 2, cumsum)

### now everything is OK: the cumulative sums are computed by columns
### and the matrix is built column-wise

### the same happens when we use the cumprod function
### that computes the cumulative products (verify by yourself)

### and the same happens when we use other functions
### and apply the function by row (using the 1 argument)

m

### compute the square roots by row

apply(m, 1, sqrt)

### compute the natural logarithms by row

apply(m, 1, log)

### compute the antilogarithms by row

apply(m, 1, exp)

### to get a row-wise matrix using the sqrt function

m

m1 <- matrix(apply(m, 1, sqrt), nrow = 4, byrow = TRUE)

m1

### to get a row-wise matrix using the log function

m

m1 <- matrix(apply(m, 1, log), nrow = 4, byrow = TRUE)

m1

### the same happens when we use a custom function
### applied by row

f <- function (x) { 2*x + 3 }

m

apply(m, 1, f)

### to get a row-wise matrix

m1 <- matrix(apply(m, 1, f), nrow = 4, byrow = TRUE)

m1

### IN SUMMARY:

### when we compute the cumulative sum, cumulative product
### square root, logarithm, exponential, sin, cos etc. by COLUMN, 
### no problem arises

### however, when we compute the same functions by ROW
### the resulted matrix is transposed  
### (because, by default, R builds the matrices column-wise)
### so to get the resulted matrix row-wise we have to use the matrix() function

###############################################





###############################
# APPLYING FUNCTIONS TO MATRICES (3)
###############################

### the sweep() function is useful when we have to
### perform different operations on various matrix rows and columns

### create the matrix

m <- matrix(1:12, nrow = 3, byrow = TRUE)

m

### for the sweep() function we must specify:

### the data source (our matrix)
### the dimension (1 for rows, 2 for columns)
### the vector of values (its length must be equal to the number of columns/rows)
### a binary operator between quotation marks: "+", "-", "*" or "/"

### add 10, 20 and 30 to each row, respectively 

sweep(m, 1, c(10, 20, 30), "+")

### substract 10, 20 and 30 from each row, respectively

sweep(m, 1, c(10, 20, 30), "-")

### multiply each row by 10, 20 and 30, respectively

sweep(m, 1, c(10, 20, 30), "*")

### divide each row by 10, 20 and 30, respectively

sweep(m, 1, c(10, 20, 30), "/")

### add 10, 20, 30 and 40 to each column, respectively 

sweep(m, 2, c(10, 20, 30, 40), "+")

### substract 10, 20, 30 and 40 from each column, respectively

sweep(m, 2, c(10, 20, 30, 40), "-")

### multiply each column by 10, 20, 30 and 40, respectively

sweep(m, 2, c(10, 20, 30, 40), "*")
+
### divide each column by 10, 20, 30 and 40, respectively

sweep(m, 2, c(10, 20, 30, 40), "/")

##################################################


##############################
# ADDING AND MULTIPLYING MATRICES
##############################

### we can add or multiply two matrices of the same dimensions element-wise

### create two 3x3 matrices

m1 <- matrix(1:9, nrow = 3, byrow = TRUE)

m2 <- matrix(101:109, nrow = 3, byrow = TRUE)

m <- m1 + m2

m

m <- m1 * m2

m

### to perform real matrix multiplication we use the %*% operator

### the number of columns in the first matrix must be equal to
### the number of rows in the second matrix

### the resulted matrix will have the  number of rows of the first matrix
### and the number of columns of the second matrix

### let's create a 3x5 matrix...

m1 <- matrix(1:15, nrow = 3, byrow = TRUE)

m1

### ...and a 5x4 matrix

m2 <- matrix(1:20, nrow = 5, byrow = TRUE)

m2

### these two matrices can be multiplied
### the result will be a 3x4 matrix

m <- m1 %*% m2

m

##################################################




#######################
# OTHER MATRIX OPERATIONS
#######################

### to transpose a matrix, we use the t() function

m <- matrix(1:20, nrow = 5, byrow = TRUE)

m

t(m)

### to compute the determinant of a quadratic matrix
### we use the det() function

m <- matrix(c(2, 4, 8, 12, 5, 7, 9, 15, 10), nrow = 3, byrow = TRUE)

m

det(m)

### to compute the inverse of a quadratic matrix
### we use the solve() function
### it only works if the determinant is different from zero

mi <- solve(m)

mi

m %*% mi

### to extract the elements on the main diagonal of a quadratic matrix
### we use the diag() function

m

x <- diag(m)

x

class(x)

### we can apply the diag() function to a vector as well

### in this case we get a quadratic matrix that contains the vector components 
### in the main diagonal and zero everywhere else

x <- c(10, 12, 14, 16, 18)

diag(x)

### we can use the diag() function to create an identity matrix

### this will create a 5*5 identity matrix

diag(rep(1, 5))

########################################################









###############################
# CREATING MULTIDIMENSIONAL ARRAYS
###############################

### a multidimensional array stores several two-dimensional
### data structures (i.e matrices)

### the matrices must have the SAME dimensions

### suppose that we have three brands that sell in two supermarkets

### create a matrix that contain the brands codes and prices
### in the first supermarket

market1 <- matrix(c(22,44,66,9,11,5), nrow=3)

rownames(market1) <- c("brand1", "brand2", "brand3")

colnames(market1) <- c("code", "price")

market1

### create another matrix that contain the brands codes and prices
### in the second supermarket

market2 <- matrix(c(55,77,99,10,14,20), nrow=3)

rownames(market2) <- c("brand1", "brand2", "brand3")

colnames(market2) <- c("code", "price")

market2

### create an array with these matrices
### using the array() function

### in the array() function we have to specify: 

### the data sources (i.e. matrices)
### the dimensions

### the order of the dimensions is: rows, columns, layers
### each matrix has three rows and two columns
### and the array has two layers (the two matrices)

markets <- array(data=c(market1, market2), dim=c(3,2,2))

### if we don't specify the dimensions, the result will be a vector, not an array

markets2 <- array(data=c(market1, market2))

markets2

### print the array

markets

### specify the dimension names

markets <- array(data=c(market1, market2), dim=c(3,2,2),
      dimnames = list(c("brand1", "brand2", "brand3"), c("code", "price"), c("smark1", "smark2")))

markets

### get the dimensions

dim(markets)

dimnames(markets)

#####################################################





###############
# INDEXING ARRAYS
###############

### the indices must be put between square brackets

### we have to use three indices:

### the first index is for the rows in the matrices

### the second index is for the columns in the matrices

### the third index is for the layers

markets

### access the first layer (matrix)

markets[,,1]

### access the second layer (matrix)

markets[,,2]

### access the second column of the first matrix

markets[,2,1]

### access the first column of the second matrix

markets[,1,2]

### access the third row, second column in the first matrix

markets[3,2,1]

### access the second row, second column in the second matrix

markets[2,2,2]

### access the first row in the first matrix

markets[1,,1]

### access the third row in the second matrix

markets[3,,2]

### access the second row, first column in both matrices

markets[2,1,]

### access the third row in both matrices

markets[3,,]

### access the first column in both matrices

markets[,1,]


###################################################

