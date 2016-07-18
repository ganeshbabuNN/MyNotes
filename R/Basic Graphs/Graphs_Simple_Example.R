#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Basic Graphs"))

#numeric vector
dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)

#scatter plot with dose(X as horizontal axis) with drugA(Y as vertical axis)
plot(dose,drugA) 

#scatter plot with dose(X as horizontal axis) with drugA(Y as vertical axis) 
plot(dose,drugA,type="b") #type indicates both points and lines should be plotted

#check the various other options for the type
plot(dose,drugA,type="p")
plot(dose,drugA,type="l")
plot(dose,drugA,type="b")
plot(dose,drugA,type="c")
plot(dose,drugA,type="h")
plot(dose,drugA,type="s")
plot(dose,drugA,type="n")
plot(dose,drugA,type="b",col="red")

#check help(plot) for other options
#now generating the output in PDF
pdf("mygraph.pdf") #pdf saved based on the current directly.
attach(mtcars) #attaches the data frame name in the R search path
plot(wt,mpg)
abline(lm(mpg~wt))
title("Regression of MPG on Weight")
detach(mtcars)
dev.off() #turn of the active window.






