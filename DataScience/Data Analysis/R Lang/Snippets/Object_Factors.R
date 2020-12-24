#categorial(nominal) variable
classtype <- c("Class1","Class2","Class1","Class1")

#ordered categorial(ordinal) variable and levels are created in alphabetical order
performance <- c("Status","Weak","Good","Excellent")

#combine the data into data frame
studentdata <- data.frame(classtype,performance)

#object structure
str(studentdata)

# vector representing ordinal variables and can be ordered by parameter order=TRUE,if data are not matching to level shows as missing
performance <- factor(performance,order=TRUE,levels=c("Status","Weak","Good","Excellent"))
studentdata <- data.frame(classtype,performance)

#checking object structure after ordered
str(studentdata)

#ATTENTION
#numeric variables can be coded as factors using levels and lables options
gender <- c("male","female","female","male")
age <- c(12,32,23,42)
#g is the factor object with numeric variable coded
g <- factor(gender, levels=c(1,2), labels=c("male", "female"))
data <- data.frame(age,gender)
str(data)





