student.names <- c("Raj","Rahul","Priya","Poonam")  #character vector
student.names #print content
str(student.names) #get structure
is.character(student.names) #test character vector

student.weights <- c( 60.5, 72.5 , 45.2,  47.5) #numeric vector
str(student.weights) #get structure
is.numeric(student.weights) #test numeric vector

student.physics.marks <- c( 70L , 75L , 80L,  85L) #Integer vector
str(student.physics.marks) #get structure
is.integer(student.physics.marks) #test if integer vector

#integer is also numeric but converse may not be true
is.numeric(student.physics.marks) #integer is also considered as as numeric
is.integer(student.weights) #but numeric vector may not be integer also

student.physics.interest <- c(FALSE,F,TRUE ,T) #logical vector.use TRUE,FALSE,T or F 
str(student.physics.interest) #get structure
is.logical(student.physics.interest) #test if logical vector

complex.vector <- c(10+2i, -1+10i, 4+3i, 7+8i) #create complex vector
str(complex.vector) #get structure
is.complex(complex.vector) #test if complex vector

#Create atomic vectors using vector()
vector("character", length = 4) #default : empty string
vector("numeric", length = 4)  #default : 0
vector("integer", length = 4)  #default : 0
vector("logical", length = 4)  #default : FALSE
vector("complex", length = 4)  #default : 0+0i