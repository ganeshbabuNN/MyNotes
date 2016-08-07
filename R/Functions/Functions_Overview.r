# marks data
marks1 <- c(13,32,44,53)
marks2 <- c(44,34,25,35)

#Simple functions
Gettotalmarks <- function(m1,m2){
  totalmarks <- m1 + m2
  totalmarks
}

#Now call the function gettotalmarks which can be reused
chemistry.marks <- Gettotalmarks(marks1,marks2)

