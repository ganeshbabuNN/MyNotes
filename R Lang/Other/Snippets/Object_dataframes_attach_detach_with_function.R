#dataframe is a like a dataset

studentid <- c(1,2,3,4)
admindate <- c("10/15/2015","11/16/2015","12/13/2015","14/12/2015")
studentname <- c("ganesh","star","hari","gana")
age <- c(12,13,15,17)
classe <- c("Class1","Class2","Class1","Class2")
Performance <- c("status","Weak","Good","Excellent")
#create the data frame object
studentdata <- data.frame(studentid,admindate,studentname,age,classe,Performance) 


#normal way of plotting .Observer the dataframe name is mandatory by default.
summary(studentdata$classe)
plot(studentdata$classe,studentdata$Performance)
plot(studentdata$classe,studentdata$age)

#optimize the above code by removing the data frame name the all statements 
#and the below has some limitations which works only for one object
attach(studentdata)#attach function adds the data frame to the R search path.
	summary(classe)  #by default all the statement it looks for the dataframe in the R search path.
detach(studentdata) # detach funtion removes the data frame from the search path.

 #limitations one object can have the same name.
attach(studentdata)
	summary(classe)
	plot(classe,Performance)
	plot(classe,age)
detach(studentdata)

#The above attach and detach is best for analysing for single data frame.
#To avoid the limitations for multiple objects with same name,The best recommeded use the with() functions, {} brackets are evaluated has reference 
with(studentdata,{
	print(summary(classe))
	plot(classe,Performance)
	plot(classe,age)
})

# And if there is only one statement (summary(classe))its optional
with(studentdata,
	print(summary(classe))
)

#the limitation of the with() function is that assignment exist only within the function brackets
with(studentdata,{
	a <- summary(classe)
	a
})

# a object cannot be accessed outside.
Error: object 'a' not found

#Create the special assignment operator <<- instead of standard one and now the object inside can be accessed outside
with(studentdata,{
	a <<- summary(classe)
	a
})

# Now a can be accessed outside.	







