#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Basic Graphs"))

#numeric vector
dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)

#COMBING THE GRAPH
#-----------------
#Combining the graph into two rows and two colums using mfrow=c(row,columns)/mcols
attach(mtcars)
opar <- par(no.readonly=TRUE) 
par(mfrow =c(2,2)) #this options will create the matrix of nrows X ncols plots by rows similary for mcol=c(nrow,ncols) by columns
plot(wt,mpg,main=" Scatterplot of wt vs. mpg")
plot(wt,disp,main="Scatterplot of wt vs.disp")
hist(wt,main="Histogram of wt")
boxplot(wt,main="Boxplot of wt")
par(opar)
detach(mtcars)

#Combining the graph into three rows and one columns
attach(mtcars)
opar <- par(no.readonly=TRUE)
par(mfrow=c(3,1))
hist(wt)
hist(mpg)
hist(disp)
par(opar)
detach(mtcars)

#overiding/supressing the title using main options or ann=FALSE to suppress all titles and labels
attach(mtcars)
opar <- par(no.readonly=TRUE)
par(mfrow=c(3,1))
hist(wt,,main="title 1")
hist(mpg)
hist(disp)
par(opar)
detach(mtcars)

#Combing graph where one graph is placed in row 1 and other two graph in row 2 with default widths using layout() functions
#layout(m) functions where mat is a matrix object specifying the locations of the multiple plots to combine
attach(mtcars)
opar <- par(no.readonly=TRUE)
layout(matrix(c(1,1,2,3),2,2,byrow=TRUE))
hist(wt)
hist(mpg)
hist(disp)
par(opar)
detach(mtcars)

#Combing graph where one graph is placed in row 1 and other two graph in row 2 with specified width 
attach(mtcars)
opar <- par(no.readonly=TRUE)
#row1 is one-third the height of the figures in row2. 
#The figure in the bottom-right cell is one-forth the width of the figure in bottom-left
layout(matrix(c(1,1,2,3),2,2,byrow=TRUE),width=c(3,1),heights=c(1,2))#width and heights options for adjusting size
hist(wt)
hist(mpg)
hist(disp)
par(opar)
detach(mtcars)

#FIGURE ARRANGEMENT WITH FINE CONTROL
#------------------------------------
#the following add two box plots are added to a scatter plot to create single enchaned graph.
#using fig parameter in par() functions
opar <- par(no.readonly=TRUE)
par(fig= c(0,0.8,0,0.8))
plot(mtcars$wt,mtcars$mpg,xlab="Miles Per Gallen",ylab=" Car Weight")
par(fig=c(0,0.8,0.55,1),new=TRUE)    # add a box plot above
boxplot(mtcars$wt,horizontal=TRUE,axes=FALSE)
par(fig=c(0.65,1,0,0.8),new=TRUE)  # add a box plot to the right.
boxplot(mtcars$mpg,axes=FALSE)
mtext("Enchanced Scatterplot",side=3,outer=TRUE,line=3)
par(opar)


