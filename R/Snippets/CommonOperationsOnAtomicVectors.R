#Peforming arithmetic and logical operation on atomic vectors
student.physics.marks <- c( 70L , 75L , 80L,  85L)
student.chemistry.marks <- c(60L, 70L, 85L, 70L)
student.physics.marks + student.chemistry.marks #arithmetic operation
student.physics.marks >= 75 #logical operation

#Extract element(s) from atomic vectors (Subsetting)
student.names <- c("Raj","Rahul","Priya","Poonam")
student.names[1] #1 based index, use [] to access elements
student.names[2] #Extract second element
student.names[1:3] #Extract multiple elements
student.names[c(T,F,T,F)] #Extract multiple elements by specifying a logical vector
student.names[student.physics.marks >= 75]

#Coercions : converting one type to another
#Implicit Coercions
student.weights <- c( 60.5, 72.5 , 45.2,  "47.5")
str(student.weights)

#Explicit Coercions
#Sensible Coercions
as.numeric(student.physics.marks >= 75) # Coverting logical values to numeric values
as.character(student.physics.marks) # Coverting integer values to character values
student.weights <- c( 60.5, 72.5 , 45.2,  47.5) #Numeric(double) atomic vector
as.integer(student.weights)

#Coercions which are not sensible
as.numeric(student.names) #Converting names to numeric values