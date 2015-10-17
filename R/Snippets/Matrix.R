student.physics.marks <- c( 70L , 75L , 80L,  85L)
student.chemistry.marks <- c(60L, 70L, 85L, 70L)
student.marks <-rbind(student.physics.marks , student.chemistry.marks)
student.marks
student.marks <-cbind(student.physics.marks , student.chemistry.marks)
student.marks
rownames(student.marks) <- c("Raj","Rahul","Priya","Poonam")
student.marks
str(student.marks)
student.marks <- matrix(c( 70L , 75L , 80L,  85L, 60L, 70L, 85L, 70L),ncol=2,nrow=4)
student.marks
student.marks <- matrix(c( 70L , 75L , 80L,  85L, 60L, 70L, 85L, 70L),ncol=4,nrow=2
                        ,byrow=TRUE)
student.marks