GetMarksSummary <- function(test.marks,summary.type) {
  result <- switch(summary.type,
    "mean" = {
      mean(test.marks)
    },
    "median" = {
      median(test.marks)
    },
    "variance" = {
      var(test.marks)
    },
    "Not Implemented"  
  )
  
  #result <- switch(summary.type,
  #                  "mean" = mean(test.marks),
  #                  "median" = median(test.marks), 
  #                  "variance" = var(test.marks),
  #                  "Not Implemented")
  result
}

GetMarksSummary(test.marks= c( 70L , 75L , 80L,  85L),"mean")
GetMarksSummary(test.marks= c( 70L , 75L , 80L,  85L),"median")
GetMarksSummary(test.marks= c( 70L , 75L , 80L,  85L),"variance")
GetMarksSummary(test.marks= c( 70L , 75L , 80L,  85L),"unknown")


