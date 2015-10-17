GetMarksSummary <- function(quiz.marks, viva.marks) {  
  total.marks <- quiz.marks + viva.marks 
  avg.marks <- mean(total.marks)
  return(list(total = total.marks,average = avg.marks))
}

GetMarksSummary(quiz.marks = c(70L, 75L, 80L, 85L), viva.marks = c(7L, 5L, 8L, 6L))