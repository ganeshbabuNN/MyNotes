GetTotalMarks <- function(quiz.marks, viva.marks, assignment.marks = 5L) {
  total.marks <- quiz.marks + viva.marks + assignment.marks
  total.marks
}

GetTotalMarks(quiz.marks = c(70L, 75L, 80L, 85L), viva.marks = c(7L, 5L, 8L, 6L))
GetTotalMarks(quiz.marks = c(70L, 75L, 80L, 85L), viva.marks = c(7L, 5L, 8L, 6L), 
              assignment.marks = c(2L, 1L, 3L, 4L))