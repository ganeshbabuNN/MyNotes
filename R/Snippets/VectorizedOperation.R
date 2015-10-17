student.marks <- c(10, 20, 30,  40) #using combine function
student.marks #print variable content
#Vectorized operations :Flavor I :Input - Single vector, Output - Scalar
mean(student.marks)
#Vectorized operations :Flavor II :Input - Single vector, output - Single vector
student.marks <- student.marks + 5 #arithmetic operator
student.marks
student.marks >= 30 #logical operator
#Vectorized operations :Flavor III :Input - Multiple vectors, output - Single vector 
student.physics.marks <- c(20,40,30,50)
student.chemistry.marks <- c(30,20,50,20)
student.total.marks <- student.physics.marks + student.chemistry.marks #Addition
student.total.marks