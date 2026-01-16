#Introduction
#Data Types
#Default value of Types
#Strings
#data structures
#To know the type of variable
#Handling missing values
#Quiz
#Assignment
#Resources

#Introduction
#============
#In programming languages, we need to use various variables to store various information. Variables are the reserved memory location to store values. As we create a variable in our program, some space is reserved in memory
#In R, there are several data types such as integer, string, etc. The operating system allocates memory based on the data type of the variable and decides what can be stored in the reserved memory

#R objects can be composed of different kinds of data according to the type and number of "atomic" values they contain:

#*Scalar items are single values;
#*Vectors are ordered sequences of scalars, they must all have the same "data type" (e.g. numeric, logical, character ...);
#*Matrices are vectors for which one or more "dimension(s)" have been defined; 
#*"Data frames"" are spreadsheet-like objects, their columns are like vectors and all columns must have the same length, but within one data frame, columns can have different data types. They are the most commonly used type of object to hold data;
#*Lists are the most general collection of data items, the can contain items of any type and kind, including matrices, functions, data frames, and other lists

#*In R, there are 6 data types
#1)Numeric 
#2)Integer
#3)Logical
#4)Complex
#5)Characters
#6)Raw

#DataTypes
#=========
#we shall understand the different type of data type

#Logical
------
#*It is a special data type for data with only two possible values which can be construed as true/false.
a <-TRUE
typeof(a)
class(a) 
b <- "FALSE"
typeof(b)
class(b) 

#Numeric
-------
#*Decimal value is called numeric in R, and it is the default computational data type.

#using normal
a <- 323
typeof(a)
class(a)

#decimal
a <- 3.6
typeof(a)
class(a)

#Integer
#--------
#*Here, L tells R to store the value as an integer,

a <- 323L
typeof(a)
class(a)

a<-as.integer(3)

#Complex
-------
#*A complex value in R is defined as the pure imaginary value i.

c <- 3+2i
typeof(c)
class(c)

#Character
---------
#*In R programming, a character is used to represent string values. We convert objects into character values with the help of as.character() function.

#using double quotes
c <- "R is a Super Programming language"
typeof(c)
class(c)

#Raw
---
#*A raw data type is used to holds raw bytes.
myraw <- charToRaw("R is a Super Programming language")
typeof(myraw)
class(myraw)

#Date
----
#Stores dates only not time.
d <- as.Date("2026-01-13")
d
typeof(d)
# "double"
class(d)
# "Date"
d <- as.Date(("2026-01-13 10:30:00")) #if want to print the time this will not be possible.
typeof(d)
class(d)

#POSIXct / POSIXlt (Date-Time)
---------------------------
##Stores date + time.
t <- as.POSIXct("2026-01-13 10:30:00") #portable operating system interface(POSI) calender time(ct) local time
typeof(t)
class(t)
##"POSIXct" is faster 
dt4 <-as.POSIXlt("2025-03-11 01:30:50") #portable operating system interface(POSI) local time(lt)
dt4
typeof(dt4)
class(dt4)
## "POSIXt" is heavy

#NULL
#-----
#Represents no value / no object.
x <- NULL

#NA (Missing Values)
--------------------
##Represents missing data. In details which see different type of missing value later.
##nothing is different missing is different but both are not same.
x <- c(10, NA, 30)
NA==NULL 
NULL==""
1==1
NA=" "

x <- c(10, NA, 30,"",NULL) #added a blank
x #observe
x<- as.integer(x)
x #observe the "" i,e string is repalced with NA which is missing.
#String
#======
#*Strings are a group of characters written inside a single or double-quotes
#*Internally R stores every string within double quotes, even when you create them with single quote

#Creating Strings

#Single or Double Quotes
s1<- 'Hello world'
s2<-"Hello world"
#String = character type in R

#using double quotes
##use single quotes also
s1 <- 'my name is baba'
s1
typeof(s1)
class(s1)

##s1 <- "my name is baba"
s1 <- "my name is baba"
typeof(s1)
class(s1)

#*we shall learn more on the string chapter using function in next chapters

#Data structure(or Sequence Type)
#================================
#*In computer science, a data structure is a data organization, management, and storage format that enables efficient access and modification
#* More precisely, a data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data.

#There are different types of R objects
#1)Vectors
#2)List
#3)Matricesss
#4)Arrays
#5)Factors
#6)DataFrame

#Vectors
#--------
#-The very basic data types are the R-objects called vectors which hold elements of different classes as shown above
#-When you want to create vector with more than one element
#-You should use c() function which means to combine the elements into a vector

#create a vector
a <- c("Ganesh","babu","Kumar","Veeresh")
a
typeof(a)
class(a)

a <- c(3,2,3,4,5) #numeric
a
typeof(a)
class(a)

a <- c("1","4","5","1",3,TRUE)
a
typeof(a)
class(a)

##validate
a <- c(3,2,3,4,5,"a")
a
typeof(a)
class(a)

a <- c("1","4","5","1",3)
a
typeof(a)
class(a)
##*Note even numeric, logical, character and vector of different types can also be created . this is expalined in detail in data structure chapter.

#list
#----
#-A list is an R-object which can contain many different types of elements inside it like vectors, functions and even another list inside it

#syntax:
	list()

#create a list using list() function
a <- list(1,"Ganesh",TRUE,3.3,5L,0+3i,as.Date("2025-01-01"),NULL,NA,c(3,2,4,3),stu.data)
a
typeof(a)
class(a)

#matrices
#--------
#-a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. 
#-Since you are only working with rows and columns, a matrix is called two-dimensional.

#syntax:
matrix(data, nrow, ncol, byrow, dim_name)  

a<-matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3,byrow = TRUE)
a
typeof(a)
class(a) 

b<- matrix(c(7,8,9,10,11,12),nrow = 3,ncol = 2,byrow = TRUE)
b
typeof(a)
class(a) 

a %*% b #dot product ex: https://www.mathsisfun.com/algebra/matrix-multiplying.html

#Different behaviour
a<-matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 3,byrow = TRUE)
a
b<- matrix(c(7,8,9,10,11,12),nrow = 3,ncol = 3,byrow = TRUE)
b
a*b 
a+b
a/b
a%%b #modulus

#arrays
#------
#-While matrices are confined to two dimensions, arrays can be of any number of dimensions
#-The array function takes a dim attribute which creates the required number of dimension.

#syntax:
	array_name <- array(data,dim(row_size,col_size,dim_names))

#create a array
names <- array(c("Ganesh","babu","Kumar","Veeresh"),dim=c(2,2,2))
names
class(names)

#Factors
#-------
#-Factors are the r-objects which are created using a vector
#-It stores the vector along with the distinct values of the elements in the vector as labels
#-The labels are always character irrespective of whether it is numeric or character or Boolean etc. in the input vector.

#syntax:
	factor()

#creating vector as input
names <- c("ganesh","Vedha","kumar","nishu","Ashirata","ganesh","Vedha","kumar","nishu","Ashirata","ganesh","Vedha","kumar","nishu","Ashirata")
names

#test it is a factor
is.factor((names))

#apply a factor function
factor_data <- factor(names)
class(factor_data)

#print the factor
factor_data

#DataFrame
#----------
#-Data frames are tabular data objects
#-Unlike a matrix in data frame each column can contain different modes of data
#-It is a list of vectors of equal length.

#syntax:
	data.frame()

#creating a dataframew
stu.data <- data.frame(
  student_id = c(14:19),
  student_name=c("ganesh","vee","vaib","prave","rudresh","sontosh"),
  student_age =c(32,44,34,56,34,23),
  student_class= c("MCA","BCA","BTECH","BE","MTECH","MSC"),
  student_join=as.Date(c("2021-01-20","2022-01-22","2000-03-18","2012-01-11","2022-01-14","2000-03-24")),
  stringsAsFactors = FALSE
)

stu.data
class(stu.data)
typeof(stu.data)
print(stu.data)

#Default value of Types
#======================
#Default value = what R fills when you create an empty vector.
#0 is a real value
#NA means value not available

#numeric(double)  -> 0
numeric(2) #this print the empty value of an vector

#integer --> 0L
integer(4)

#logical --> FALSE
logical(1)

#charcter --> ""
character(1)

#complex -> 0+0i
complex(1)

#raw --> 00
raw(1)

#list --> NULL
vector("list",1)

#factor --> NA
factor(character(1))

#date ---> NA
as.Date(character(1))

#POSIXct/POSIXlt --> NA
as.POSIXct(character(1))
as.POSIXlt(character(1))

#To know the type of variable used
#=================================
#typeof() → How R stores it internally
#--------------------------------------
#typeof() tells you the low-level storage type used by R’s C engine.
#Think: “In memory, what kind of object is this?”

x <- 10
typeof(x)
#[1] "double"

#Even though 10 looks like an integer, R stores it as double.
y <- 10L
typeof(y)
#[1] "integer"

#class() → What kind of object R thinks it is
----------------------------------------------
#*Conceptually class() gives the object-oriented class.
#*object<->class its idealogy is object , class is a keyword.
#*It controls how functions behave on the object (methods).
#Think like “What category of object is this for R functions?”

#Example: Date
d <- as.Date("2026-01-13")
typeof(d)
#"double"
class(d)
#"Date"

#So:
#Internally: stored as a double
#Conceptually: treated as a Date

#Example: Factor
f <- factor(c("A", "B", "A"))
typeof(f)
#"integer"
class(f)
#"factor"
#Internally: integer
#Conceptually: categorical variable

#mode() → Legacy / user-level type
----------------------------------
#*Concept mode() is an older, higher-level type system.
#*It is simpler and often less precise.
#Think:“What general type does this belong to?”
#It groups many internal types together.

#Example
x <- 10
typeof(x)
#"double"
mode(x)
#"numeric"

f <- factor(c("A","B","A"))
f
typeof(f)
#"integer"
mode(f)
#"numeric"

d <- as.Date("2026-01-13")
typeof(d)
#"double"
mode(d)

d <- "ganesh"
typeof(d)
#"double"
mode(d)

#So:
#mode() hides details
#Mostly kept for backward compatibility

#str() → Structure of the object
#--------------------------------
#Concept str() shows Type,Class,Length / dimensions,Attributes
#A preview of values
#Think:“What is inside this object?”

#Example: Vector
x <- c(1, 2, 3)
str(x)
#num [1:3] 1 2 3

#Meaning:
#num → numeric (double)
#[1:3] → length
#1 2 3 → values

#Example: Data Frame
df <- data.frame(
  id = 1:3,
  name = c("A", "B", "C"),
  passed = c(TRUE, FALSE, TRUE)
)
str(df)

#Concept with One Object
------------------------
x <- as.Date("2026-01-13")

typeof(x)
#"double"
class(x)
#"Date"
mode(x)
#"numeric"
str(x)
#Date[1:1], format: "2026-01-13"

#Interpretation:
#Stored as double
#Treated as Date
#Broad type: numeric
#Structure: 1 element Date with formatting

#Checking Data Types
-------------------
typeof(x)   # low-level type
class(x)    # high-level class
str(x)      # structure of object

#To test the type data type
--------------------------
#use is methods

is.numeric(23.2)
is.integer(32L)
is.character('A')
is.vector(4)
is.matrix(x)
is.data.frame(df)
is.logical(0)

#Why This Matters ?
#Example: Character Date Column
RFSTDTC <- "2026-01-13"
typeof(RFSTDTC)  # "character"
class(RFSTDTC)   # "character"

#But after conversion:
RFSTDTC <- as.Date(RFSTDTC)
typeof(RFSTDTC)  # "double"
class(RFSTDTC)   # "Date"

#So:
#class() tells you how it behaves (date arithmetic)
#typeof() tells you how it is stored
#str() confirms structure for validation

#Ref: object<->class
#https://youtu.be/m_MQYyJpIjg //layman understanding of a Oops

#Handling missing values
#=======================
#*Handling missing values in R, one of the common tasks in data analysis is handling missing values.
#*In R, missing values are often represented by the symbol NA (not available) or some other value that represents missing values (i.e. 99).
#*Impossible values (e.g., dividing by zero) are represented by the symbol inf (not a number)
#*NA means missing value (“not available”).
#*But R is strongly typed: every value has a data type.
#*So R actually has different kinds of NA, one for each type.
#*They all mean “value is missing”, but they preserve the data type.

#logical --> NA (missing value (default logical))
x<- NA
typeof(x)

#integer --> NA_Integer_(missing integer)
c(3L,NA_integer_)
c(1L, NA_character_) #not like this coz it changes its behavior

#numeric --> NA_real_ (missing numeric (double))
c(3.3,NA_real_)
c(3.3,NA_character_) #not like this

#character -->NA_character_ (missing character)
y<-NA_character_
typeof(y)
c("ganesh",NA_character_)
name <- c("Ravi", "Sita", NA_character_)
typeof(name)

#complex --> NA_Complex (missing complex)
c(3+2i,NA_complex_)
#raw ---> NA
c(charToRaw("ganes"),NA)

#example
x <- c(1,2,NA)
ifelse(x>1,"High",NA_character_)
ifelse(x>1,"High",NA)

employ <- data.frame(id,name,salary)
employ
#NA is a logical constant of length 1 which contains a missing value indicator
employ <- rbind(employ,c(106,NA,NA))
#use is.na() to test the missing values
is.na(employ$name[7])
is.na(employ$salary[7])

#null values represent the object empty.
a<-list(2,3,3,4)
typeof(a)
is.list(a)

a <- NULL 
is.null(a)

##Detect Missing Values
-----------------------
### Check for NA
is.na(x)

##Summary of Missing values in other prompinent languages
---------------------------------------------------------
##in R, it represented by 'NA'(Not available-generic missing) and other typed version are NA_integer,NA_real_,NA_character_,NA_complex.
x <- c(10, NA, 30)
is.na(x)

##in python(Pandas/Numpy), it represented by 'None'(general python object),'NaN(not a number used in Numpy and pandas) and other typed version are NA_integer,NA_real_,NA_character_,NA_complex.
#import pandas as pd
#x = pd.Series([10, None, 30])
#x.isna()

##SAS, it represented as '.'(dot-numeric missing), " "(blankspace-charactermising) 
# data test;
#   input age salary;
#   datalines;
#   25 50000
#   . 60000
#   30 .
# ;
# run;

##SQL its is represented as NULL(no value/unknown/not applicable. its not equal to anything, even another nULL.
#SELECT * FROM employees WHERE salary IS NULL;

##Julia represent missing.
#x = [10, missing, 30]
#ismissing.(x)

##java represent null(for object), special value of primitives Double.Nan for loating-point numbers.
# Integer x = null;
# double y = Double.NaN;

##SPSS Representation .(dot), user-defined missing: specifc value like -99,999.
#MISSING VALUES age (-99).

##Important Concept (Across All Languages)
#1)Missing values are not zero and not empty strings. They mean:
#-Data was not collected
#-Data is unknown
#-Data is not applicable
#-Data was lost or corrupted
#2)Treating missing values incorrectly can:
#-bias analysis
#-break models
#-cause regulatory issues in clinical data

#Quiz:
#=====

#Assignment:
#===========

#Resources:
#=========
#https://www.tutorialspoint.com/r/r_data_types.htm
#https://www.r-bloggers.com/2021/04/handling-missing-values-in-r/
#https://bcb420-2022.github.io/R_basics/r-scalars.html#r-data-types   #scalara types
