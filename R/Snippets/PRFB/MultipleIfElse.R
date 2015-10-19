IsGoodPerformanceByBatch <- function(test.marks) {
  average.marks <- mean(test.marks)
  print(paste("average marks :",average.marks))
  if(average.marks >= 75) {
    print("Overall performance of the batch is brilliant")
  }
  else if(average.marks >= 60) {
    print("Overall performance of the batch is satisfactory")
  }
  else {
    print("Overall performance of the batch is below average")
  }
  print("performance test completed") 
}

IsGoodPerformanceByBatch(test.marks= c( 70L , 75L , 80L,  85L))
IsGoodPerformanceByBatch(test.marks= c( 50L , 60L , 60L,  70L))
IsGoodPerformanceByBatch(test.marks= c( 50L , 55L , 60L,  60L))
