student.names <- c("Raj","Rahul","Priya","Poonam")
student.weights <- c( 60.5, 72.5 , 45.2,  47.5)
student.genders <- factor(c("Male","Male","Female","Female"))
student.physics.marks <- c( 70L , 75L , 80L,  85L)
student.chemistry.marks <- c(60L, 70L, 85L, 70L)
#Create data frame
students <- data.frame(student.names,student.weights,student.genders,
                       student.physics.marks, student.chemistry.marks)
typeof(students)
students
str(students)

#Use stringAsFactors = FALSE , to avoid converstion of character vector to factor
students <- data.frame(student.names,student.weights,student.genders,
                       student.physics.marks, student.chemistry.marks, 
                       stringsAsFactors = FALSE)
str(students)
