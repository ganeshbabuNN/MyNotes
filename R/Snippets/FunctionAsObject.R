GetTotalMarks <- function(quiz.marks, viva.marks) { 
  total.marks <- quiz.marks + viva.marks  
  total.marks
}

#01 Look into them
GetTotalMarks  #return the function itself
formals(GetTotalMarks) #Access arguments
body(GetTotalMarks) #Access body

#02 Assign them
MyGetTotalMarks <- GetTotalMarks
MyGetTotalMarks

#03 Use them as arguments to another function
GetTotalMarks(quiz.marks = c(70L, 75L, 80L, 85L), viva.marks = c(7L, 5L, 8L, 6L)) 

#pass the function as argument in do.call function
do.call(GetTotalMarks,list(quiz.marks = c(70L, 75L, 80L, 85L),
                           viva.marks = c(7L, 5L, 8L, 6L)))