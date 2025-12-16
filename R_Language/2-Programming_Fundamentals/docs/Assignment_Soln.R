##if statement
#A1: to check if a is greater then b
a <- 4
b <- 3
if (a>b){
  print("it is greater")
}

#A2:to check it is a number
a <- 4
b <- "ganesh"
if(is.integer(a)){
  print("it is a integer")
}

#A3: to check the number is even or not
x <- 3
if(x%%2==0){
  print("it is even number")
}
if(x%%2!=0){
  print("it is not a even number")
}

#A3: to check the number is even or not
x <- 2
if(x%%2!=0){
  print("it is odd number")
}
if(x%%2!=0){
  print("it is not a odd number")
}


#A5: how to check year is a leap year or not
#leap year In an ordinary year, if you were to count all the days in a calendar from January to December, you'd count 365 days. 
#But approximately every four years, February has 29 days instead of 28. So, there are 366 days in the year. This is called a leap year.
#step1:If the year is evenly divisible by 4, go to step 2. ...
#step2:If the year is evenly divisible by 100, go to step 3. ...
#step3:If the year is evenly divisible by 400, go to step 4. ...
#step4:The year is a leap year (it has 366 days).
#step5:The year is not a leap year (it has 365 days).
year1 <- 2000
if(year1%%4==0){
  if(year1%%100==0){
    if(year1%%400==0){
      cat(year1,"is a leap year")
    }else{
      cat(year1,"is not a leap year")
    }
  }else{
    cat(year1,"is a leap year")
  }
}else{
  cat(year1,"is a leap year")
}

#A6:combing both if the given number is even or odd
y = 6
if (y%%2==0){
  cat(y,"is a even number\n")
}else{
  cat(y,"is a odd number")
}

#A7:how to check if the given value is a string or number.
x <- "ganesh"
if (is.integer(x)){
  print("the given value is a number")
}else{
  print("the given value is a string")
}

#A8:how to check the given value is available in the given string("Life","is","Beautiful")
str1 <- "life"
x <- c("life","is","beautiful")
if (str1 %in% x){
  print("Key is found")
}else{
  print("key is not found")
}

#A9)how to check if given value is less then 20, show if it is a even or odd and same for value is greater then 20 , show if it even or odd
a<- 200
if(a <20){
  print("a is less than 20")
  if(a%%2==0){
    print("it is even number")
  }else{
    print("it is a odd number")
  }
}else{
  if(a>20){
    print("a is greater then 20")
    if(a%%2==0){
      print("it is even number")
    }else{
      print("it is a odd number")
    }
  }
}

#A10)how to check given character is vowel or constant?
val <- "o"
if(val=='a'||val=='e'||val=='i'||val=='o'||val=='u'||val=='s'){
  print("character is vowel")
}else{
  print("character is a constant")
}

#A11)how to check if the given age is child(<18) or a old guy(>30) or a adult
age <- 23
if(age<18){
  print("child")
}else if(age >30){
  print("old guy")
}else{
  print("adult guy")
}

#A12)how to check if the marks given is first class(>75), second class(>65) and third class(>35) and fail(<35)
marks <- 35
if(marks>75){
  print("First Class")
}else if(marks >65){
  print("second class")
}else if(marks >= 35){
  print("third class")
}else{
  print("Fail")
}

#A13)Build a calculator for options addition,subraction,multiplications and divisions.
cat("1)Addition \n")
cat("2)Subractions \n")
cat("3)Multiplications \n")
cat("4)Divisions\n")

n1<- readline(prompt = "enter the first  number")
n2<- readline(prompt = "enter the Second  number")

choice <- readline(prompt="Enter your choice:")
n1<-as.integer(n1)
n2<-as.integer(n2)
choice<-as.integer(choice)
if (choice==1){
  sum <- (n1+n2)
  cat("sum=",sum)
}else if(choice==2){
  sub<-(n1-n2)
  cat("sub=",sub)
}else if(choice==3){
  mul<-(n1*n2)
  cat("mul=",mul)
}else if(choice==4){
  div <- (n1/n2)
  cat("div=",div)
}else{
  print("wrong choice")
}

#A14)how to find which is the largest of given 4 numbers
n1=30
n2=40
n3=50
n4=35

if (n1 >n2){
  if(n1>n3 && n1>n4){
    largest =n1
  }
}else if(n2>n3){
  if (n2>n1&&n2>n3){
    largest=n2
  }
}else if(n3>n1){
  if(n3>n1&&n3>n1){
    largest=n3
  }
}else{
  largest=n4
}

cat("largest number is =",largest)

#A15)Print the table of the given number
num <- 4
range <- c(1:10)
for (tbl in range){
  print(paste(num," X ",tbl," = ",num*tbl))
}

#A16)Print the below Star
#*
#**
#***
#****
#****
st="*"
for (i in c(1:5)){
  for(j in i){}
    print(paste(1,i+0))
}

#A17)Print the cumulative sum of that given number
num <- 10
sum <- 0
repeat{
  sum<- sum+num
  num=num+1
  #print(num)
  if(num > 20){
    break
  }
}
print(sum)

#A18)Print the number from 1 to 20 , skip the odd numbers
for(i in c(1:20)){
  if(i%%2==0){
    print(i)
  }
}

#A19)Print the number from 1 to 20 ,but add first print odd sequence
for(i in c(1:20)){
  if(i%%2==0){
    print(i)
  }else if(i==3){
    print(i)
  }
}

#A20)Print the cube of the number of the given number in cumulative way.
a<-20
i<-1
repeat{
  print(paste("the cube of the number",i,"=",i*i*i))
  if (i==a){
    break
  }
  i=i+1
}

#A21)Program to find the sum of the digits of the number #NOT WORKING
n<-35345245 
n <- as.integer(n)  
sum<-0  
while(n!=0){  
  sumsum=sum+(n%%10)  
  n=as.integer(n/10)  
}  
cat("sum of the digits of the numbers is=",sum)    

#A22)Program to check a number is palindrome or not
#A palindromic number is a number (such as 16461) that remains the same when its digits are reversed. 
n <- 1331
n <- as.integer(n)  
num<-n  
rev<-0  
while(n!=0){  
  rem<-n%%10  
  rev<-rem+(rev*10)  
  n<-as.integer(n/10)  
}  
print(rev)  
if(rev==num){  
  cat(num,"is a palindrome num")  
}else{  
  cat(num,"is not a palindrome number")  
} 

#A23)program to find the frequency of a digit in the number

num = 4324234234  
digit =2
n=num  
count = 0  
while(num > 0) {  
  if(num%%10==digit){  
    count=count+1  
  }  
  num=as.integer(num/10)  
}  
print(paste("The frequency of",digit,"in",n,"is=",count))  

#A24)Program to check a number is Armstrong or not
#An Armstrong number of three digits is an integer such that the sum of the cubes of its digits is equal to the number itself
num = 153 
sum = 0  
temp = num  
while(temp > 0) {  
  digit = temp %% 10  
  sum = sum + (digit ^ 3)  
  temp = floor(temp / 10)  
}  
if(num == sum) {  
  print(paste(num, "is an Armstrong number"))  
} else {  
  print(paste(num, "is not an Armstrong number"))  
}  

#A25)How to check the number is a prime number or not
num=7  
flag = 0  
if(num> 1) {  
  flag = 1  
  for(i in 2:(num-1)) {  
    if ((num %% i) == 0) {  
      flag = 0  
      break  
    }  
  }  
}   
if(num == 2)    
  flag = 1  
if(flag == 1) {  
  print(paste(num,"is a prime number"))  
} else {  
  print(paste(num,"is not a prime number"))  
}

#A26)Print the sum of all positive numbers in array c(10L,-11L,12L,-13L,14L,-15L,16L,-17L,18L) 
a1<- c(10L,-11L,12L,-13L,14L,-15L,16L,-17L,18L)  
sum<-0
for(i in a1){
  if(i<0){
    next
  }
  sum=sum+i
}
cat("The sum of all positive numbers in array is=",sum) 