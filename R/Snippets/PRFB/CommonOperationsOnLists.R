student.names <- c("Raj","Rahul","Priya","Poonam")
student.weights <- c( 60.5, 72.5 , 45.2,  47.5)
student.genders <- factor(c("Male","Male","Female","Female"))
student.physics.marks <- c( 70L , 75L , 80L,  85L)
student.chemistry.marks <- c(60L, 70L, 85L, 70L)


#Subsetting: Extract element(s) using unnamed list
student1 <- list(student.names[1], student.weights[1], student.genders[1],
                 student.physics.marks[1], student.chemistry.marks[1])

student1[1] #Single brackets [] return element of same type
typeof(student1[1]) 
student1[[1]] #double brackets [[]] return the object in its own type
typeof(student1[[1]]) 
student1[1:3] #Access multiple elements using index


#Subsetting: Extract element(s) using named list
student1 <- list(name = student.names[1], 
                 weight = student.weights[1], 
                 gender = student.genders[1], 
                 physics = student.physics.marks[1],
                 chemistry = student.chemistry.marks[1])

student1[["name"]]
student1$gender #Access element using element name or label
student1[c("physics","chemistry")] #Access multiple elements using label names

#Use length() to get number of elements
length(student1)