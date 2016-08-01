#mean 
mean(c(3,4,5,2))

#median
median(c(3,4,5,2))

#standard deviation
sd(c(3,4,5,2))

#variance
var(c(3,4,5,2))

#Median absolute deviation
mad(c(3,4,5,2))

#quantiles the quartiles of a ranked set of data values are the three points that divide the data set into four equal groups, 
#each group comprising a quarter of the data
y <- quantile(x,c(.,.84))


#range
range(c(3,4,5,2))

#sum
sum(c(3,4,5,2))

#lagged difference with lag indicating which lag to use, default is 1
diff(c(3,4,5,2))
diff(c(3,4,5,2),lag=2)

#minimum
min(c(3,4,5,2))

#maximum
max(c(3,4,5,2))

#scale function centers and/or scales the columns of a numeric matrix.
x <- matrix(1:9,3,3)
scale(x)


