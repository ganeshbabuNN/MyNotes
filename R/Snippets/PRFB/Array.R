class1.student.physics.marks <- c( 70L , 75L , 80L,  85L)
class1.student.chemistry.marks <- c(60L, 70L, 85L, 70L)
class1.student.marks <-cbind(class1.student.physics.marks 
                             , class1.student.chemistry.marks)
class1.student.marks

class2.student.physics.marks <- c( 71L , 76L , 81L,  86L)
class2.student.chemistry.marks <- c(61L, 71L, 86L, 71L)
class2.student.marks <-cbind(class2.student.physics.marks 
                             , class2.student.chemistry.marks)
class2.student.marks

student.marks <- array(c(class1.student.marks,class2.student.marks), dim=c(4,2,2))
student.marks
student.marks[2,2,2] #Row number, column number, sheet number
student.marks[1:3,2,]