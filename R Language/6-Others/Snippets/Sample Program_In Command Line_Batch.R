
#creating a vector using function c()(combine function), which combines its arguments into a vector or list.
age <- c(1,3,5,2,11,9,3,9,12,3)
weight<- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)

#calculate  mean using mean functions
mean(weight)
[1] 7.06

#calculating a standard deviations of the weight using sd functions
sd(weight)
[1] 2.077498

#calculate correlations using cor functions between age and weight plotted against weight.
cor(age,weight)
[1] 0.9075655

#generating a scatter plot using the plot function plotting against age and weight.
plot(age,weight)

#quit from the session
q()