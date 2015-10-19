GetTotalMarks <- function(quiz.marks, viva.marks, extra.marks = average.viva.marks) {  
  average.viva.marks <- mean(viva.marks)
  total.marks <- quiz.marks + viva.marks + extra.marks
  total.marks
}

GetTotalMarks(quiz.marks = c(70L, 75L, 80L, 85L), viva.marks = c(7L, 5L, 8L, 6L))