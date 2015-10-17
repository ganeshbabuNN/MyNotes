student.marks <- matrix(c( 70L, 75L, 72L, 80L, 50L,
                           80L, 85L, 60L, 72L, 88L,
                           60L, 70L, 87L, 55L, 90L,
                           85L, 70L, 74L, 86L, 78L ),ncol=5,nrow=4, byrow=TRUE)

rownames(student.marks) <- c("Raj","Rahul","Priya","Poonam")
colnames(student.marks) <- 
  c("Physics","Chemistry","Mathematics", "Biology","History")
student.marks
result <- vector("numeric",length=nrow(student.marks))
for(row in 1:nrow(student.marks)){
  sum <- 0
  for(column in 1:ncol(student.marks)){
    sum <- sum + student.marks[row,column]
  }
  result[row] <- sum
}
result


apply(student.marks,1,sum)
apply(student.marks,1,max)
apply(student.marks,1,which.max)
colnames(student.marks)[apply(student.marks,1,which.max)]
apply(student.marks,2,mean)
apply(student.marks,2,max)
rownames(student.marks)[apply(student.marks,2,which.max)]
apply(student.marks,1:2,function(x) x +2)