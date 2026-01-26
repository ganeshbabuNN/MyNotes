#Introduction
#Data Types
#Default value of Types
#Strings
#Data structures
#To know the type of variable used
#To test the type data type
#Handling missing values
#Data Type Conversion in R
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
#Stored as number of days since 1970-01-01.

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
#the main difference apart from POSIXct we can extract data parts like date,hour,second,...etc.
lt <- as.POSIXlt(Sys.time())
lt
lt$sec
lt$min
lt$hour
lt$mday
lt$wday
lt$mon
lt$year
lt$isdst
lt$zone
lt$gmtoff

#NULL
#-----
#Represents no value / no object.
x <- NULL

#NA (Missing Values)
--------------------
##Represents missing data. In details which see different type of missing value later.
##nothing is different missing is different but both are not same.
x <- c(10, NA, 30)
#NA==NULL 
#NULL==""
#1==1
#NA=" "

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
typeof(x) #In R, NA (Not Available) is technically a logical constant by default based on the data type hierarchy or Coercion Hierarchy. 

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

#Data Type Conversion in R
#==========================
#In another language it is called as type casting for primitive type and for objects its boxing/unboxing.
#There are two broad types of conversion:
##Implicit (Automatic) Type Conversion
## Explicit (Manual) Type Conversion

#Implicit (Automatic) Type Conversion
#------------------------------------
##R automatically converts data types without you asking, based on a fixed hierarchy.
##Type Hierarchy (Lowest → Highest)
##logical → integer → numeric → character

#logical to integer
x <- c(TRUE,FALSE,5L)
x
typeof(x)

#integer --> numeric
x <- (1L+2)
x
typeof(x)

#numeric --> character
x <-c(10.5,"hello")
x
typeof(x)

#Example: Arithmetic Coercion
5 + "2" #non-numeric argument to binary operator

##Explicit (Manual) Type Conversion
#----------------------------------
#You explicitly tell R to convert a value using as.*() functions.

#character to number
##as.numeric()
a<-as.numeric("10")
a
typeof(a)
##decimal
a<-as.numeric("10.3")
a
typeof(a)
##Non-numeric text:
a<-as.numeric("A") #NA Warning: NAs introduced by coercion
a
typeof(a)

#exp NULL or NA
#When you call as.numeric(NULL), you aren't creating a "missing value"—you are creating an empty vector.
#NULL represents the absence of an object.When forced into a numeric type, it becomes a numeric vector with a length of 0.
#typeof() looks at the storage mode of that vector. Since you asked for it to be numeric, R stores it as a double (the default numeric type in R)
a<-as.numeric(NULL) #NULL is like an empty box. If you say "give me an empty box for numbers," typeof tells you it's a box meant for double numbers, even if it's empty
typeof(a) #double

#NA is a logical constant by default, but R has several "flavors" of NA to ensure type consistency within vectors.
#When you run as.numeric(NA), R converts the logical NA into NA_real_
#The typeof() for NA_real_ is double. Remember represent NA as NA_integer_,NA_real_,NA_logical and NA_character.
a<-as.numeric(NA)#NA is like a box with a "Missing" sign inside. To keep the box's type consistent, R uses a specific version of that "Missing" sign that matches the numeric (double) type
typeof(a) #NA

#numeric to integer
#as.integer()
a<-as.integer(10)
a
typeof(a)
#non-numeric
a<-as.integer("A")
a
typeof(a) #NA
#exp NULL or NA
a<-as.integer(NULL)
typeof(a) #NA
a<-as.integer(NA)
typeof(a) #NA

#integer to logical
z<-1L
z
typeof(z)
z<-as.logical(z)
z
typeof(z)
#exp NULL or NA
a<-as.logical(NULL)
typeof(a) #NA
a<-as.logical(NA)
typeof(a) #NA
#exp on non-zero
# logical understand two non-zero and zero, when you have non-zero its its 1 and zero is 0 i,e TRUE and FALSE
z <- 3#positive number i,e non-zero
typeof(z)
z<-as.logical(z)
z
z <- -32 #negative number i,e non-zero
typeof(z)
z<-as.logical(z)
z

#OTHER WAY AROUND
#Character Conversions
#numeric to character
a<-as.character(100)#numeric
typeof(a)
a<-as.character(3.14)#decimal
typeof(a)
a<-as.character(1L)#integer
typeof(a)
a<-as.character(TRUE)#logical
typeof(a)
a<-as.character(NULL)#NULL
typeof(a) #NA
a<-as.character(NA) #NA
typeof(a) #NA

#numeric conversation
a<-as.numeric("A") #character
a 
typeof(a) #NAs introduced by coercion see the above concept
a<-as.numeric(1L) #integer
a 
typeof(a)
a<-as.numeric(TRUE) #logical
a 
typeof(a)
y <- "Apple"

#integer conversation
a<-as.integer("A") #character
a 
typeof(a) #NAs introduced by coercion see the above concept
a<-as.numeric(12) #numeric
a 
typeof(a)
a<-as.numeric(TRUE) #logical
a 
typeof(a)

#Logical Conversions
a<-as.logical(1) #numeric
typeof(a)
as.logical(1L) #integer
a
typeof(a)
as.logical("A") #character
#It creates a "slot" in memory reserved for logical values (TRUE, FALSE, or NA).
#Because "A" cannot be interpreted as true or false, R fills that slot with NA
#Since the "box" was made to hold logicals, typeof(a) will always be logical.
a
typeof(a)

#Factor Conversions (Very Important)
##Factor → Character (Always do this first)
f <- factor(c("A", "B", "C"))
as.character(f)
#Factor → Numeric (Wrong Way)
as.numeric(f) #(these are level codes)
#Correct Way
as.numeric(as.character(f))

#Date & Time Conversions
##Character → Date
as.Date("2025-01-16")
##With Format
as.Date("16-01-2025", format="%d-%m-%Y")
#POSIXct / POSIXlt
as.POSIXct("2025-01-16 10:30:00")
#Date -> Character
as.character(Sys.Date())

#Conversion Inside Data Structures
##Data Frame Column Conversion
df <- data.frame(
  id = c("1", "2", "3"),
  age = c("25", "30", "40"),
  stringsAsFactors = FALSE
)
str(df)

df$age <- as.numeric(df$age)
df
str(df)
##Matrix Conversion
m <- matrix(c(1, "A", 3), nrow=3)
typeof(m) #Matrices must have one data type.
##List Conversion
lst <- list(1, "A", TRUE) #Lists can store mixed types (no coercion).

#Coercion During Operations
#The Coercion Hierarchy When R performs an operation, it looks at the types involved and moves "up" this chain:
#logical-->integer-->numeric(double)-->character
#Logical is the "lowest" (least complex).
#Character is the "highest" (most complex) because any number or boolean can be represented as text, but not all text can be a number.

##A. Logical to Numeric (The most useful coercion)
###When you use a logical value (TRUE/FALSE) in a mathematical operation, R treats TRUE as 1 and FALSE as 0.
TRUE + 5       # Result: 6 (TRUE becomes 1)
sum(c(T, F, T)) # Result: 2 (Count of TRUEs)
mean(c(T, F))   # Result: 0.5 (Proportion of TRUEs)
TRUE + TRUE ##Arithmetic

##B.Numeric to Character
##If you combine numbers and text (e.g., in a vector or a comparison), the numbers are coerced into strings.
c(1, 2, "three") # Result: "1" "2" "three" (The numbers become text)
5 == "5" # Result: TRUE (The number 5 is coerced to "5" for comparison)
"10" == 10 ##Comparison

#C.Numeric to Logical
#In conditional statements (like an if block), R can coerce numbers to logicals. Zero becomes FALSE, and any other number becomes TRUE.
as.logical(0)  # FALSE
as.logical(42) # TRUE
##Logical Operations
1 & 0


#Safe Conversion Techniques
##Suppress Warnings
as.numeric("A")
suppressWarnings(as.numeric("A"))
##Check Before Converting
is.numeric(x)
is.character(x)
##Convert Multiple Columns
df[] <- lapply(df, as.character)
df
str(df)

#Type Testing Functions
#function - purpose
#class()-object clse
#typeof()-storage mode
#mode()- old-style type
#is.numeric()-Numeric check
#is.integer() -integer check
#is.character()- character check
#is.factor()-factor check
#str()-structure

x <- 10L
class(x)
typeof(x)

#Common Conversion Pitfalls
##Factor Trap
f <- factor(c("10", "20"))
as.numeric(f)   # wrong
as.numeric(as.character(f))#Correct
##NA Introduction
as.numeric(c("10", "A")) #The Failure: The string "A" has no logical numeric value but 10 it understood a number equivalent
as.numeric(c(10, "A"))
#Logical Misinterpretation
as.logical("Yes")   # NA

#aspect --> implicit-->explicit
#who controls-->R --> you
#Warning shown?-->rare often
#safe?-->risky-->safer
#usercase --> quickops --> date cleaning

#conversaion cheat sheett
#character-->numeric =as.numeric()
#numeric-->character= as.character()
#Numeric--> Integer= as.integer()
#Logical-->Numeric= Automatic
#Character-->Logical= as.logical()
#Factor-->Character= as.character()
#Factor-->Numeric= as.numeric(as.character())
#Character-->Date= as.Date()
#Character-->POSIXct= as.POSIXct()

#Quiz:
#=====

#Assignment:
#===========
#R DATA TYPES – ASSIGNMENT
#------------------------
#SECTION 1: Atomic Data Types (Foundations)
#Q1. Logical
#Create a logical vector of length 5 with at least one NA.
#Convert it to numeric.
#Explain the output.

#Q2. Integer vs Numeric
#Create one integer and one numeric variable with the same value.
#Compare:
#  typeof()
#object.size()
#Why does R treat them differently?

#Q3. Numeric Precision
#Store 0.1 + 0.2 in a variable.
#Compare it with 0.3 using ==.
#Explain the result.

#Q4. Complex Numbers
#Create a complex number.
#Extract real and imaginary parts.
#Multiply two complex numbers and explain the result.

#Q5. Character Data
#Create a character vector of 4 elements.
#Check its length and memory usage.
#Convert it to factor and compare storage.

#Q6. Raw Type
#Convert your name into raw bytes.
#Convert it back to character.
#Where is raw data used in real applications?

#SECTION 2: Special Values (Critical for Real Data)
#Q7. NA Handling
#Create a numeric vector with multiple NA values.
#Try to calculate mean without removing NA.
#Fix the issue and explain

#Q8. Typed NA
#Create:
#  NA_integer_
#  NA_character_
#Combine each with a vector of another type.
#Observe coercion.

#Q9. NaN vs NA vs Inf
#Generate one example of each.
#Test them using:
#  is.na()
#  is.nan()
#  is.finite()
#Explain the differences.

#Q10. NULL
#Create a list with one element as NULL.
#Check its length.
#Remove that element and observe behavior.

#SECTION 3: Data Structures
#Q11. Vector Coercion
#Combine logical, integer, numeric, and character into one vector.
#Predict the output type before running.
#Verify using typeof().

#Q12. Matrix
#Create a 3×3 matrix.
#Assign row and column names.
#Extract:
# 2nd row
# 3rd column
#diagonal elements

#Q13. Array
#Create a 3D array (2×2×3).
#Explain how data is filled internally.
#Extract all values from 2nd layer.

#Q14. List
#Create a nested list containing:
#  numeric
#  character
#  another list
#Access deeply nested elements using:
#  [[ ]]
#  $

#Q15. Data Frame
#Create a data frame with:
# integer
# character
# numeric
#Check structure.
#Explain why data frame is actually a list.

#SECTION 4: Factor (High-Value Concept)
#Q16. Factor Internals
#Create a factor with 3 levels.
#Convert it to numeric directly
#Explain why the output is misleading.

#Q17. Ordered Factor
#Create an ordered factor (Low, Medium, High).
#Compare two values.
#Explain how ordering works internally.

#SECTION 5: Date and Time
#Q18. Date Type
#Create today’s date.
#Subtract 10 days.
#Find the difference in days.

#Q19. POSIXct vs POSIXlt
#Create current time in both formats.
#Compare:
# typeof()
#  class()
#Explain when to use each

#SECTION 6: Type Inspection & Coercion
#Q20. typeof vs class
#Create a factor and a Date.
#Compare typeof() and class().
#Explain why they differ.

#Q21. Coercion Rules
#Create vectors that trigger each coercion step.
#Document the coercion hierarchy.

#SECTION 7: Memory & Performance (Advanced)
#Q22. Memory Comparison
#Create a vector of 1 million:
# integers
#  numerics
# Compare memory usage.
#Draw conclusions.

#Q23. Copy-on-Modify
#Create a vector.
#Assign it to another variable.
#Modify one element.
#Observe memory behavior.

#SECTION 8: Error & Debug Thinking (Exam Level)
#Q24. Identify the Error
#Explain what is wrong and how to fix:
if (x == NA) {
    print("Missing")
  }

#Q25. Predict the Output (NO RUNNING)
#explain
x <- factor(c("10", "20"))
as.numeric(x)

#Q26. Real-World Case
#You receive a CSV where:
# IDs should be integer
#  Gender should be factor
#  Visit date is character
#Explain how you would clean and convert types safely.

#Q27. One-Line Summary
#Write one sentence per data type explaining its purpose.


#Resources:
#=========
#https://www.tutorialspoint.com/r/r_data_types.htm
#https://www.r-bloggers.com/2021/04/handling-missing-values-in-r/
#https://bcb420-2022.github.io/R_basics/r-scalars.html#r-data-types   #scalara types
