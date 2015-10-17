student.names <- c("Raj","Rahul","Priya","Poonam")
student.weights <- c( 60.5, 72.5 , 45.2,  47.5)
student.genders <- factor(c("Male","Male","Female","Female"))
student.physics.marks <- c( 70L , 75L , 80L,  85L)
student.chemistry.marks <- c(60L, 70L, 85L, 70L)

#Creating unnamed list
student1 <- list(student.names[1], student.weights[1], student.genders[1], 
                 student.physics.marks[1], student.chemistry.marks[1])
str(student1)
student1

#Creating named list
student1 <- list(name = student.names[1], 
                 weight = student.weights[1], 
                 gender = student.genders[1], 
                 physics = student.physics.marks[1],
                 chemistry = student.chemistry.marks[1])

str(student1)

student1 <- list(name = student.names[1], 
                 weight = student.weights[1], 
                 gender = student.genders[1], 
                 marks = c(student.physics.marks[1], student.chemistry.marks[1]))

str(student1)