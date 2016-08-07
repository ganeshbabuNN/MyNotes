# For Statement
#it executes a statements repetitvely until a variables value contained in the sequence seq.
for(i in 1:10)
  print("Hello")
  
#Nested for loop
mymat = matrix(nrow=30, ncol=30) # create a 30 x 30 matrix (of 30 rows and 30 columns)

for(i in 1:dim(mymat)[1])  # for each row
{
  for(j in 1:dim(mymat)[2]) # for each column
  {
    mymat[i,j] = i*j     # assign values based on position: product of two indexes
  }
} 

mymat[1:10,1:10]

