# Intro
# Type of operators
# Operator Overloading and Overriding
# operator precedence and associativity
# Quiz
# Assignment
# Resources

# Intro
# =====
# -The operator can be defined as a symbol which is responsible for a particular operation between two operands.
# -An operator is a symbol which tells the compiler to perform specific logical or mathematical manipulations
# -R programming is very rich in built-in operators
# Operators are used to perform operations on variables and values.

# Type of operators
# ==================
# There are Type of Operators.
# 1)Arithmetic operators
# 2)Relational operators
# 3)Logical Operators
# 4)Assignment Operators
# 5)Special Operators
# 6)Formula Operator
# 7)Pipe Operator
# 8)Tidyverse Logical Helpers
# 9)Bitwise Operators

# Arithmetic operators-Used for mathematical calculations.
# ----------------------
# Arithmetic operators are used to perform arithmetic operations between two operands.
# + ( addition) 
# - (Subractions)
# * (Multiplication)
# / (Division)
# ^ or ** (Power)
# %% MOdulus(Reminder)
# %/% Integer Division

# + ( addition) 
5+3
# - (Subractions)
5-3
# * (Multiplication)
5*3
# / (Division)
5/2
# ^ or ** (Power)
2^3
# %% MOdulus(Reminder)
5%%2
# %/% Integer Division
##The integer division operator (%/%) %/% is the integer division operator. 
##It divides the first number by the second and returns only the whole number (the quotient), discarding any remainder or decimal parts..
5%/%2
##what happend when we Division & Modules ?
 
# Relational operators-Used to compare values. Result is TRUE/FALSE.
# ----------------------
# -A relational operator is a symbol which defines some kind of relation between two entities

# == (equal to)
#!= (not equal)
#> (Greater than) 
#< (Less than)
#>= (Greater or equal)
#<=(less or equal)

# == (equal to)
5==5
#!= (not equal)
5!=3
#> (Greater than) 
5>3
#< (Less than)
5<3
#>= (Greater or equal)
5>=5
#<=(less or equal)
3<=5

#Use case: filtering data, conditions in if, filter().
age <- 25
age >= 18

#Logical Operators-Used to combine conditions.
#-----------------
# &(and)			This operator is known as the Element-wise Logical AND operator. This operator takes the first element of both the vector and returns TRUE if both the elements are TRUE.	 
# |(or)			This operator is called the Element-wiseLogical OR operator. This operator takes the first element of both the vector and returns TRUE if one of them is TRUE.	 
# !(not)			This operator is known as Element-wise Logical NOT operator. This operator takes the first element of the vector and gives the opposite logical value as a result.	
# &&			called as Logical AND operator.This operator takes the first element of both the vector and gives TRUE as a result, only if both are TRUE.		
# || 			called Logical OR operator.This operator takes the first element of both the vector and gives the result TRUE, if one of them is true.

#& AND(Vector-wise)
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE

#|(OR)
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE

#'(')
`c(TRUE,FALSE)
#!(NOT)
!TRUE
#&&(AND(first value only))
TRUE&&FALSE

#Difference:
#& and | -->element-wise for vectors
#&& and || --> only first element (used in if)

x <- c(5, 10, 15)
x > 6 & x < 14

#Assignment Operators-Used to assign values to variables.
#--------------------
#<- = left assignment(preferred)
#= (Assignment)
#->(right assignment)
#<<- global assignment

#<- = left assignment(preferred)
x<-10
x
#= (Assignment)
x=10
#->(right assignment)
10->x
#<<- global assignment
x<<-10
x
#Note: Use <- in professional R coding

#Special Operators-Used for sequences, indexing, formulas, etc.
------------------
#a)Sequence operator :
1:5
#b)Membership Operator %in%
5 %in% c(1, 3, 5, 7)
#c) Matrix Multiplication %*%
A <- matrix(c(1,2,3,4), nrow=2)
B <- matrix(c(5,6,7,8), nrow=2)
A %*% B
#d) Modulus & Integer Division
10 %% 3   # Remainder
10 %/% 3  # Quotient


#e) Formula Operator ~
##----------------------
lm(y ~ x) #Used in modeling and plotting. #lm(y ~ x)
#f) Subsetting Operator [], [[]], $
#[] ==Extact multiple elements
#[[]]== extract single element
#$ = Access column 


#[] ==Extact multiple elements#
a <- c("1","4","5","1",3)
a[1]


#[[]]== extract single element
a <- list(1,"Ganesh",TRUE,3.3,5L,0+3i,as.Date("2025-01-01"),NULL,NA,c(3,2,4,3),stu.data)
a
a[3]
a[[3]]
a[[3]][1]
a
a[11]
a[[11]]
a[[11]][2]
a[[11]]$student_name

#$ = Access column
stu.data <- data.frame(
  student_id = c(14:19),
  student_name=c("ganesh","vee","vaib","prave","rudresh","sontosh"),
  student_age =c(32,44,34,56,34,23),
  student_class= c("MCA","BCA","BTECH","BE","MTECH",NA),
  student_join=as.Date(c("2021-01-20","2022-01-22","2000-03-18","2012-01-11","2022-01-14","2000-03-24")),
  stringsAsFactors = FALSE
)

#Pipe Operator %>% (from dplyr / magrittr)
#Passes output to next function.
stu.data %>% filter(student_age > 20) %>% select(student_name) #Use case: clean, readable data pipelines.

#Tidyverse Logical Helpers
#-------------------------
##Used inside filter():
#is.na(x) --> check missing
#between(x,a,b)-->Range
#near(x,y)--> floating point comparison

#is.na(x) --> check missing
stu.data %>% filter(is.na(stu.data$student_class))
#between(x,a,b)-->Range
stu.data %>% filter(between(age, 20, 30))
#near(x,y)--> floating point comparison
stu.data %>% filter(near(student_age,23.0))

#Bitwise Operators
#-----------------
##Operate at binary level.
#operator --> meaning
#&->(AND)
#xor() -->(XOR)
#bitwAnd()-->Bitwise AND
#bitwOr()-->Bitwise OR
#bitwShiftL()-->Left shift

bitwAnd(5, 3)   # 101 & 011 -->001--> 1 # i shall skip this as it is involved more binary

#Operator Precedence (Order of Execution)
=========================================
#Operator precedence decides which operation is evaluated first when multiple operators appear in a single expression.
#If you do not use parentheses (), R follows a fixed priority order.

#Why Operator Precedence Matters  
5 + 2 * 3 #if evaluated left to rigth.

#But R follows precedence:
5 + (2 * 3) #So multiplication happens before addition.

#General Precedence Rules (High → Low)
#====================================
#() -- Parenthese
#^,** --exponentiation
#+,-(unary) -sign
#*,/,%%,%/%--- multiple,divide,modulus
#+,- --- add, subtract
#: --- sequence
#<,<=,>,==,!= ------relational
#! --- logical NOT
#& --- logical AND (vectorized)
#| --- logical OR 
#&& --- logical AND(short-ciruit)
#<-,->,= --- assignment
#~ ---- formula
##Higher priority operators are evaluated first.

#Parentheses () – Highest Priority



# Operator Overloading and Overriding
# ====================================
# Genearlly few languages supports operator overloading and overriding.

# #using number
# a <- 3
# b <- 3
# a+b #its overides

# #using string
# a <-"ganesh"
# b <- "babu"
# a|b #it does not allow overloads as it allows only numeric not string where it other languages it overloads

# #using list
# l1 <- list(1,2,3,4,5)
# l2 <- list(6,7,8,9,10)
# l1+l2 # it does not allow overloads as it allows only numeric not string where it other languages it overloadsprint(s1)
 
# operator precendence and associativity
# =====================================
# The precedence of the operators is essential to find out since it enables us to know which operator should be evaluated first. 
# The precedence table of the operators in Python is given below.

# Operator	Description
# ^		Exponent(Right to left)
# -x, +x		Unary minus, Unary plus(left to right)
# %%		Moduls(left to right)
# *, /		multiplication, division(left to right)
# +,-		addtion subractions(left to right)
# <, >, <=, 	comparison(left to right)
# >=, ==, !=			
# !		logical not(left to right).
# &, &&		Logical AND(left to right)	
# |, ||		Logical OR(left to right)	
# ->, ->>		Rightward assignment(left to right)	
# <-, <<-		Leftward assignment(Right to left)	
# =		Leftward assignment(Right to left)	
 
# In the above table, you can confirm that some of the groups have many operators. 
# It means that all operators in a group are at the same precedence level.
# And whenever two or more operators have the same precedence, then associativity defines the order of operations.
# The associativity is the order in which it evaluates an expression containing multiple operators of the same precedence. 
# Almost all operators except the exponent (**) support the left-to-right associativity
 
# # Testing Left-right associativity
# print(4 * 7%%3) #i,e 4 * (7%%3)=4
# # Testing left-right associativity
# print(2*3^2) #i,e 2 * (3^2)
# # Checking right-left associativity of ^ exponent operator
# print(4^2+2) # (4^2)+2
# # Checking the right-left associativity
# print((3^2)*2)

# R does have some operators such as assignment operators and comparison operators which don’t support associativity. Instead, there are special rules for the ordering of this type of operator which can’t be managed via associativity.
 
# For example, 
# the expression 5 < 7 < 9 does not mean (5 < 7) < 9 or 5 < (7 < 9), it means evaulated as it does not understand
 
# Quiz:
# =====
 
# Assignment:
# ===========
# 
# Resources:
# =========
# https://www.tutorialspoint.com/r/r_operators.htm
# https://www.w3adda.com/r-tutorial/r-operator-precedence
