#scalar vector
a <- "my first list"

#numeric vector
 b <- c(1,2,3,4)
 
#character vector
c <- c("a","b","c","d")

#matrix
d <- matrix(1:10,nrow=5)

#Printing the list
#without label
mylist <- list(a,b,c,d)

# with labels
mylist <- list(title=a,num=b,c,d)

#Accessing the first components with component number
mylist[[4]]

#Accessing the first components with component name
mylist[["num"]]