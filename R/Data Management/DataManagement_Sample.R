#Limits number of digits printed after decimal place
options(digits = 2)
#student data dataset
student <- c("Borading Anne","Wicket John","Walker Ruvee",
             "Haristolen Wane","Hunt Keeper","Carryl Hunter",
              "Reuvan Star","Greg Breg","Joel England","Marry Orton")
math <- c(502,500,412,358,495,512,410,625,573,522)
science <- c(95,99,80,82,75,85,80,95,89,86)
english <- c(25,22,18,15,20,28,15,30,27,18)
roster <- data.frame(student,math,science,english,stringsAsFactors = FALSE)
str(roster)
#Problem obtain the score
#using scale functions
z <- scale(roster[,2:4])
score <- apply(z,1,mean)
roster <- cbind(roster,score)
#quantifle() functions gives you the percentile rank of each students
y <- quantile(score,c(.8,.6,.4,.2))
#Using logical operators, you can recode students percentile ranks into a new categorical grade variable.
roster$grade[score >= y[1]] <- "A"
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"
#Extracts the last and first name
name <- strsplit((roster$student)," ")
lastname <- sapply(name,"[",2)
firstname <- sapply(name,"[",1)
roster <- cbind(firstname,lastname,roster[,-1])
#sort last name and first name
roster <- roster[order(lastname,firstname),]
roster
