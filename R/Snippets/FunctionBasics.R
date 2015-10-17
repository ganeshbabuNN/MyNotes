GetTotalMarks <- function(quiz.marks, viva.marks) {
  
  total.marks <- quiz.marks + viva.marks
  total.marks
}

student.physics.quiz.marks <- c(70L, 75L, 80L, 85L)
student.physics.viva.marks <- c(7L, 5L, 8L, 6L)
student.physics.total.marks <- GetTotalMarks(student.physics.quiz.marks,
                                             student.physics.viva.marks)
student.physics.total.marks

student.chemistry.quiz.marks <- c(60L, 70L, 85L, 70L)
student.chemistry.viva.marks <- c(8L, 4L, 7L, 9L)
student.chemistry.total.marks <- GetTotalMarks(student.chemistry.quiz.marks,
                                               student.chemistry.viva.marks)
student.chemistry.total.marks