student.genders <- c("Male","Male","Female","Female") # Character vector
student.genders
student.genders <- c(2L,2L,1L,1L) # Integer vector
student.genders
student.genders <- factor(c("Male","Male","Female","Female")) # factor
student.genders
as.numeric(student.genders) #Explicit conversion
student.blood.groups <- factor(c("A","AB","O","AB"), levels = c("A","B","AB","O")) 
str(student.blood.groups)