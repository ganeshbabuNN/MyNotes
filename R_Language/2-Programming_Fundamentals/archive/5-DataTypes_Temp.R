#1. Atomic (Basic) Data Types in R
#---------------------------------
#Atomic vectors store one type of data only.

#1.1 Logical
#Concept
#Represents boolean values.
#Stored as 1 byte internally.
#Coerces to numeric (TRUE = 1, FALSE = 0).

#Values
#TRUE, FALSE, NA

#Example
x <- TRUE
y <- FALSE
z <- NA
as.numeric(x)   # 1

#1.2 Integer
#Concept
#Whole numbers.
#Stored as 4 bytes.
#Must explicitly use L.
#Range
#−2,147,483,648 to 2,147,483,647

#Example
x <- 10L
typeof(x)   # "integer"
#Without L, R treats numbers as numeric (double).

#1.3 Numeric (Double)
#Concept
#Default numeric type in R.
#Stored as 8 bytes (64-bit floating point).
#Supports decimals and scientific notation.

#Example
x <- 10
y <- 3.14
z <- 2e3
typeof(x)   # "double"

#1.4 Complex
#Concept
#Used for mathematical computations.
#Stored as two doubles (real + imaginary).

#Example
z <- 2 + 3i
Re(z)   # 2
Im(z)   # 3

#1.5 Character
#Concept
#Stores text (strings).
#Variable length.
#Each string is a pointer internally.

Example
name <- "Ganesh"
typeof(name)  # "character"

#1.6 Raw
#Concept
#Stores bytes (0–255).
#Used in binary and low-level operations.

#Example
x <- charToRaw("A")
x   # 41 (hex)

#2. Special Values (VERY Important)
#---------------------------------
#2.1 NA (Missing Value)
#Typed missing values exist.

NA
NA_integer_
NA_real_
NA_character_
NA_complex_

#Why important?
#Prevents unintended type coercion.

#2.2 NaN (Not a Number)
0/0   # NaN

#2.3 Inf and -Inf
1/0    # Inf
-1/0   # -Inf

#2.4 NULL
#Concept
#Absence of a value.
Length = 0.
#Not a data type; it removes objects.
x <- NULL
length(x)  # 0

#3. Data Structures (Built on Atomic Types)
#------------------------------------------
#3.1 Vector
#Concept
#1D, homogeneous.
v <- c(1, 2, 3)
#Type coercion:
c(1, "a", TRUE)  # all become character

#3.2 Matrix
#Concept
#2D, homogeneous.
Vector with dim attribute.
m <- matrix(1:6, nrow = 2)

#3.3 Array
#Concept
#n-dimensional extension of matrix.
a <- array(1:8, dim = c(2,2,2))

#3.4 List
#Concept
#Heterogeneous container.
#Recursive structure.
lst <- list(1, "a", TRUE, list(10))

#3.5 Data Frame
#Concept
#Tabular structure.
#Each column is a vector.
#Columns can be different types.
df <- data.frame(
  id = 1:3,
  name = c("A", "B", "C"),
  score = c(90.5, 88.2, 76)
)

#3.6 Tibble (from tidyverse)
#Concept
#Modern data frame.
#Does not auto-convert strings to factors.
library(tibble)
tibble(x = 1:3, y = "a")

#4. Categorical Data
#-------------------
#4.1 Factor
#Concept
#Stored as integers with labels.
#Used for categorical variables.
f <- factor(c("yes", "no", "yes"))
levels(f)

#Internally integer, NOT character.

#5. Date and Time Types
#---------------------
#5.1 Date
d <- as.Date("2026-01-22")
#Stored as number of days since 1970-01-01.

#5.2 POSIXct
#Concept
#Date-time stored as seconds since epoch.
#Preferred for analysis.
t <- Sys.time()
typeof(t)  # "double"

#5.3 POSIXlt
#Concept
#List representation of date-time components.
t2 <- as.POSIXlt(Sys.time())

#6. Type Inspection Functions (CORE CONCEPT)
#-------------------------------------------
#Function	Purpose
#typeof()	Internal storage
#class()	Object behavior
#mode()	Legacy (avoid)
#str()	Structure

#Example:
#x <- factor("yes")
typeof(x)  # "integer"
class(x)   # "factor"

#7. Type Coercion Rules 
#-----------------------
#Order of coercion:
  logical → integer → double → complex → character
Example:
c(TRUE, 1, 2.5, "A")

#8. Memory Perspective (Advanced)
#--------------------------------
#Type	Bytes
#logical	1
#integer	4
#double	8
#complex	16
#raw	1
#object.size(1L)
#object.size(1)

#Common Mistakes
#Using numeric instead of integer
#Comparing NA using ==
#Assuming factor is character
#Forgetting coercion in vectors

#Correct way:
is.na(x)

#10. Summary Classification
#Atomic Types :logical, integer, double, complex, character, raw
#Special Values :NA, NaN, Inf, NULL
#Data Structures :vector, matrix, array, list, data.frame
#Categorical: factor,Date-Time,Date, POSIXct, POSIXlt