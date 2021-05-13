

#setting the seed for random number generations
#generate pseudo-random numbers from a uniform distribution on the interval 0 to 1
runif(5)
set.seed(1234)

#generating multivariate normal data
library(MASS)
options(digits = 3)
#Set the random number seed
set.seed(1234)
mean <- c(230,146.7,3.6)
#Specifies the mean vector and covariance matrix
sigma <- matrix(c(15360.8,6721.2,-47.1,6721.2,4700.9,-16.5,-47.1,-16.5,0.3),nrow=3,ncol=3)

mydata <- mvrnorm(500,mean,sigma)
mydata <- as.data.frame(mydata)
names(mydata) <- c("y","x1","x2")

dim(mydata)
head(mydata,n=10)

