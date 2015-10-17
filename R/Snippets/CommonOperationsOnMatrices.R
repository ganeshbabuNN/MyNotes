student.physics.marks <- c( 70L , 75L , 80L,  85L)
student.chemistry.marks <- c(60L, 70L, 85L, 70L)
student.marks <-cbind(student.physics.marks , student.chemistry.marks)
rownames(student.marks) <- c("Raj","Rahul","Priya","Poonam")
student.marks

#Subsetting: Extract element(s) from matrix
student.marks[,] #row number,column number
student.marks[2,2] 
student.marks[2,]
student.marks[,2]
student.marks[1:3,]
student.marks[c(1,3),]
student.marks[c(T,F,F,T),]

#summary
student.marks
rowSums(student.marks) #Row wise sum
colSums(student.marks) #Column wise sum
colMeans(student.marks) #Column wise mean