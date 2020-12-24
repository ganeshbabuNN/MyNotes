#vector hold many elements in one dimensional only
#elements are combined using combine function c()

#Holding number
f <- c(2,3,4,2,3)

#Holding character
f <- c("ganesh","vedh","gajenth","Kalyan")

#Holding logical value
f <- c(TRUE, FALSE,TRUE,FALSE)

#Accessing element in vector is by position .
#accessing one elements by only
f <- c(2,3,4,2,3)
f[3] #3 is the position of the elements
[1] 4

#accessing more then elements by only
f <- c(2,3,4,2,3)
f[c(4,2)]
[1] 2 3

#using colon operator generates by sequence of the elements
f <- c[1:3]
[1] 2 3 4

#printing by sequences
a <- c(1:5)
[1] 1 2 3 4 5