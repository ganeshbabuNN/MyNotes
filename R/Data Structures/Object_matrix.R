#matrice are two-dimensional array

#3 X 4 matrix without labels
y <- matrix(1:12,nrow=3,ncol=4)

#2 X 2 matrix by rows with labels
cells <- c(32,13,42,12) # adding element(data) of the matrix 
rnames <- c("R1","R2") #annotating the row lables
cnames <- c("C1","C2") #annotating the column lables
y <- matrix(cells,nrow=2,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames)) # adding all the argument to be a matrix

#2 X 2 matrix by columns change byrow=FALSE with labels
y <- matrix(cells,nrow=2,ncol=2,byrow=FALSE,dimnames=list(rnames,cnames))

#accessing the matrix by rows
y[,2]

#accessing the matrix by column
y[,1]

#accessing the matrix specific element of the matrix
y[1,2]

#using colon operator generating by sequence,columns indefinate but fixed rows
 x <- matrix(1:20,nrow=2)
 
 #using colon operator generating by sequence,fixed rows and columns
 x <- matrix(1:20,nrow=2,ncol=2)
 
 #accessing 1 rows with those specific elements
 x <- matrix(1:20,nrow=2,ncol=5)
 x[1,c(1,4)]
 


