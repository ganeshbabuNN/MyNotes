# Intro
# Numeric Data Type
# Built in functions
# Number systems
# Quiz
# Assignment
# Resources

# Intro
# =====
# Number data types store numeric values. They are immutable data types, means that changing the value of a number data type results in a newly allocated object

# Number objects are created when you assign a value to them. For example −
x <- 32 
.Internal(inspect(x))
y <- 33
.Internal(inspect(y))
y <- 32
.Internal(inspect(y)) #get the memory address which different.

# You can also delete the reference to a number object by using the rm function. The syntax of the del statement is −
a<-3
b<-'ga'
rm(a,b)


# Built in functions
# ==================
#Basic Mathematical Functions
#---------------------------
#abs() – Absolute Value -Returns the positive value of a number.
abs(-10)

#sqrt() – Square Root
sqrt(25)

#^ or pow() – Power
2^3

#round() – Round to Nearest
round(3.456, 2)

#ceiling() – Round Up
ceiling(3.1)

#floor() – Round Down
floor(3.9)

#trunc() – Truncate Decimal Part
trunc(5.9)

#Summary / Aggregation Functions
#-------------------------------
#sum() – Total
sum(c(10, 20, 30))

#mean() – Average
mean(c(10, 20, 30))

#median() – Middle Value
median(c(10, 20, 30))

#min() / max() – Smallest / Largest
min(3, 7, 2)
max(3, 7, 2)

#range() – Minimum and Maximum
##Range function in R, returns a vector containing the minimum and maximum of all the given arguments
range(c(5, 10, 20))
## R Range function - for a numeric vector
x <- c(2,7,1,-17,Inf,35,21,7)
x
##Range function with NA:
x <- c(2,7,1,-17,Inf,35,21,7,NA)
range(x,na.rm=TRUE)
##Range function for a character vector:
x<-c("a","h","x","i","j")
range(x)
##range() function in R of the dataframe column
mystu <- data.frame(name=c('a','b','c','d','e','f','g'), marks=c(43,45,67,32,56,23,54))
range(mystu$marks)

#Statistical Functions
#---------------------
#sd() – Standard Deviation
sd(c(10, 20, 30))

#var() – Variance
var(c(10, 20, 30))

#quantile() – Percentiles
quantile(c(10, 20, 30, 40), 0.75)

#IQR() – Interquartile Range
IQR(c(10, 20, 30, 40))

#Cumulative Functions
#--------------------
#cumsum() – Cumulative Sum
cumsum(c(2, 4, 6))

#cumprod() – Cumulative Product
cumprod(c(2, 3, 4))

#cummax() / cummin() – Running Max / Min
cummax(c(1, 5, 3, 8))

#Rounding & Formatting Numbers
#-----------------------------
#signif() – Significant Digits
signif(123.456, 4)

#formatC() – Control Formatting
formatC(1234.5678, format="f", digits=2)

#Modular Arithmetic
#------------------
#%% – Remainder
10 %% 3

#%/% – Integer Division
10 %/% 3

#Random Number Generation
#------------------------
#runif() – Uniform Random Number
runif(5, 1, 10)
##Generate a random number between 5.0 and 7.5
x1 <- runif(1,5.0,7.5)
x1
##If you want to generate multiple random value
x2 <- runif(4, 5.0, 7.5)
x2

#rnorm() – Normal Distribution
rnorm(5, mean=0, sd=1)

#sample() – Random Sampling
##Generate a random integer between 1 and 10
x3 <- sample(1:10, 3)
x3
##if we want to generate more than one random number, 
x4 <- sample(1:10, 5, replace=T)
x4
##Select 6 random numbers between 1 and 40, without replacement
x5 <- sample(1:40, 6, replace=F)
x5

#set.seed() – Reproducibility
set.seed(123)
runif(3)

runif
?sample
?.Random.seed

#Testing / Logical Numeric Functions
#-----------------------------------
#is.numeric()
is.numeric(10)

#is.integer()
is.integer(10L)

#any() / all()
#if_any() Keeps a row if the condition is true in at least one of the selected columns.
any(c(1, 2, 3) > 2)
#if_all() Keeps a row only if the condition is true in every single one of the selected columns.
all(c(1, 2, 3) > 0)

#Sequence & Repetition
#---------------------
#seq() – Generate Sequences
seq(1, 10, by = 2)

#rep() – Repeat Values
rep(5, times = 3)

#Real-World Data Example
marks <- c(45, 60, 75, 80, 90)

mean(marks)        # Average
sd(marks)          # Spread
max(marks)         # Highest score
round(mean(marks), 2)

# zip like functions using mapply
# -------------------------------
dict <- new.env(hash = TRUE)
dict
Add <- function(key, val) dict[[key]]<- val
Add
 
name=c('a','b','c','d','e','f','g')
marks=c(43,45,67,32,56,23,54)
mapply(Add, name, marks)

#Advanced Mathematical Functions
--------------------------------
#log(), log10(), log2() – Logarithms
log(10)        # Natural log
log10(100)     # Base-10 log → 2
log2(8)        # Base-2 log → 3

#exp() – Exponential
exp(1)         # e^1

#factorial() – Factorial
factorial(5)

#choose(n, k) – Combinations (nCk)
choose(5, 2)

#prod() – Product of Elements
prod(c(2, 3, 4))

#Trigonometric Functions
#-----------------------
#All angles are in radian
sin(pi/2)     # 1
cos(0)        # 1
tan(pi/4)     # 1

#Inverse Functions
asin(1)
acos(1)
atan(1)

#Convert degrees → radians:
deg <- 30
rad <- deg * pi / 180
sin(rad)

#Scaling, Normalization & Transformation
#---------------------------------------
#scale() – Standardization (Z-score)
x <- c(10, 20, 30)
scale(x) #Centers to mean 0, sd 1.

#Min–Max Normalization
x <- c(10, 20, 30)
(x - min(x)) / (max(x) - min(x))

#Log Transformation
log(x) #Used to reduce skewness.

#Handling Missing Values in Numeric Functions
##Most numeric functions return NA if input has missing values.

#Using na.rm = TRUE
x <- c(10, 20, NA, 40)
sum(x)                 # NA
sum(x, na.rm = TRUE)  # 70
mean(x, na.rm = TRUE)

#Rounding & Precision Control (More Details)
--------------------------------------------
#round()
round(3.4567, 2)

#ceiling() vs floor()
ceiling(4.1)   # 5
floor(4.9)     # 4

#signif() – Significant Digits
signif(0.0123456, 3)

#Ranking, Ordering & Position Functions
x <- c(100, 50, 75)
rank(x)

#order() – Sorting Index
order(x)

#which.min() / which.max() – Position of Min/Max
which.min(x)
which.max(x)

#Window / Rolling Style Numeric Functions
#-----------------------------------------
#diff() – Differences Between Consecutive Values
x <- c(10, 15, 25, 40)
diff(x)

#lag() / lead() (dplyr)
library(dplyr)
lag(x)
lead(x)

#Moving Average (Manual)
x <- c(10, 20, 30, 40, 50)
filter <- rep(1/3, 3)
stats::filter(x, filter)

#Numeric Testing & Classification
#--------------------------------
#is.finite(), is.infinite(), is.nan()
is.finite(10)
is.infinite(Inf)
is.nan(NaN)

#all.equal() – Floating Point Comparison
a <- 0.1 + 0.2
b <- 0.3
a == b            # FALSE (precision issue)
all.equal(a, b)  # TRUE

#Cumulative & Rolling Analysis
#-----------------------------
#cummean() (via dplyr)
library(dplyr)
cummean(c(10, 20, 30))

#cumsum() / cumprod()
cumsum(c(1, 2, 3))
cumprod(c(1, 2, 3))

#Random & Probability Functions
#------------------------------
#Distributions: d, p, q, r
#For Normal Distribution:
#Function	Purpose
#dnorm()	Density
#pnorm()	Cumulative probability
#qnorm()	Quantile
#rnorm()	Random values

rnorm(5, mean=0, sd=1)
pnorm(1.96)

#Real-World Analytical Examples
#-------------------------------
#Example 1: Z-Score Calculation (Outlier Detection)
x <- c(50, 55, 60, 200)
z <- (x - mean(x)) / sd(x)
z

#Example 2: BMI Calculation
weight <- c(60, 72, 80)   # kg
height <- c(1.65, 1.70, 1.75)  # meters

bmi <- weight / (height^2)
round(bmi, 2)

#Example 3: Percent Change
sales <- c(100, 120, 150)
pct_change <- diff(sales) / sales[-length(sales)] * 100
pct_change

#Example 4: Ranking Students
marks <- c(80, 95, 70, 85)
rank(-marks)   # Higher marks → better rank

#Common Pitfalls
#----------------
#Ignoring NA
mean(c(10, NA, 20))   # NA
##Use
mean(c(10, NA, 20), na.rm=TRUE)

#Floating Point Comparisons
0.1 + 0.2 == 0.3   # FALSE
#Use
all.equal(0.1 + 0.2, 0.3)

# Number systems
# ==============
 
# Binary type
# -----------
# # R Program to convert an integer to binary
# # Loading library
library(binaryLogic)
# # Calling as.binary() function
as.binary(1)
as.binary(10)
as.binary(-1)
as.binary(0xAB)

# Hexadecimal Type
# ----------------
# # R Program to convert an integer to hexadecimal

# library(gmp)
x <- '6917530144339624323'
x_bigz <- as.bigz(x)
as.character(x_bigz, b = 16)

# #convert to the hexi to integer
strtoi('0x7f8cff8b')

V <- c(0xa373, 0x115c6, 0xa373, 0x115c6, 0x176b3)
sprintf("%d", V)
#-WW345RFV 

# Octal  Type
# -----------
on <- as.octmode(c(16, 32, 127:129))
on

# Boolean Type
# ------------
# -boolean has two  logical values of values True or False
# -R comes with Booleans (with predefined True and False displays that are basically just the integers 1 and 0). It also has a placeholder object called None. Let's walk through a few quick examples of Booleans (we will dive deeper into them later in this course).
 
# Ex:
x=FALSE
y=TRUE
x = (1 == TRUE) #In R, True represents the value as 1 and False as 0
x
y = (1 == TRUE)
y
a = TRUE + 4
a
b = FALSE + 10
b
 
# #We can use None as a placeholder for an object that we don't want to reassign yet:
# #None placeholder
b = None
# #Show
print(b)
#None
 
# Number System
# *------------*
# 1)Base 10(Decimal)- Represent any number using 10 digits [0–9]
# 2)Base 2 (Binary) — Represent any number using 2 digits [0–1]
# 3)Base 8 (Octal) — Represent any number using 8 digits [0–7]
# 4)Base 16(Hexadecimal) — Represent any number using 10 digits and 6 characters [0–9, A, B, C, D, E, F]
 
a=363
print((a) ,"Decimal system")
print(bin(a) ,"binary system")
print(oct(a) ,"octal system")
print(hex(a) ,"hex system")
  
# Ref
# https://www.quora.com/What-is-the-use-of-number-system-in-computer
# https://www.tutorialspoint.com/computer_logical_organization/number_system_conversion.htm
 
# Know ASCII , unicode and Numbers systems
# ----------------------------------------
# -All computer data is just numbers,Each character of text is stored as a number.When you press a key on the keyboard, the keyboard sends a number, corresponding to the key that was pressed,When text is displayed on your monitor, each character is read from memory as a number.Computer doesn't understand English or Hindi or any language.But computer do understand only 0 and 1.
# -0 means False ,1 means True
# -ASCII codes represent text in computers, communications equipment, and other devices that use text
# -UNicod is the subset of ASCII and extended upto 2^21 characters

test<-utf8ToInt("Apples")
test
 
tes1=intToUtf8(test)
test1
 
 
# Refer ASCII_Tables.jpg
 
# ref:
# http://www.asciitable.com/ - ASCII table
# http://www.differencebetween.net/technology/software-technology/difference-between-unicode-and-ascii/ - Def
# https://youtu.be/61Bs7-ycL64
# https://byjus.com/maths/number-system/
# https://byjus.com/maths/hexadecimal-number-system/
 
# Quiz:
# =====
 
# Assignment:
# ===========
 
 
# Resources:
# =========
# https://resbaz.github.io/2014-r-materials/lessons/01-intro_r/data-structures.html
# https://www.statmethods.net/management/typeconversion.html
# https://rforexcelusers.com/calculate-percent-column-r/
# https://blog.revolutionanalytics.com/2009/02/how-to-choose-a-random-number-in-r.html
# https://www.datasciencemadesimple.com/range-function-in-r/
