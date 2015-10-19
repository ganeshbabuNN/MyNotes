IsGoodPerformanceByBatch <- function(test.marks) {
  average.marks <- mean(test.marks)
  performance.test <- average.marks >= 75
  print(paste("average marks :",average.marks, "performance.test :",performance.test))
  if(performance.test){
    print("Overall performance of the batch is brilliant")
  }
  else{
    print("Overall performance of the batch is average")
  }
  print("performance test completed") 
}

IsGoodPerformanceByBatch(test.marks= c( 70L , 75L , 80L,  85L))
IsGoodPerformanceByBatch(test.marks= c( 50L , 60L , 60L,  70L))

