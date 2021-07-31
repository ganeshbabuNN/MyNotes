#lets use the sample datasets called mtcars
#lets do simple linear regression predicating miles per gallon (mpg) from car weight(wt) using mtcars datasets

lm(mpg~wt,data=mtcars)

#lets store the above result to an object
lmfit <- lm(mpg~wt,data=mtcars)
summary(lmfit) # summary statistics
plot(lmfit)

#another example
cook <- cooks.distance(lmfit) #generates and stores influence statistics
plot(cook) # graphs
predict(lmfit)#predict miles per gallon from car weight in a new set of data.

