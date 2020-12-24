#Array are like matrices but more then one dimensions

#creating a 2X3X4 array
dim1 <- c("R1","R2") 
dim2 <- c("C1","C2","C3")
dim3 <- c("E1","E2","E3","E4")
myarray <- array(1:24,c(2,3,4),dimnames=list(dim1,dim2,dim3))

#Accessing the specific element
myarray[1,2,3]

#Accessing the specific element of that row only
myarray[2, c(1,2),4] 

