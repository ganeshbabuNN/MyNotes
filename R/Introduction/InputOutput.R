#Assume there are three script script1.R, script2.r ,script3.R
setwd("C:\\Users\\Ganesh Babau\\Documents\\GitHub\\ProgrammingLanguages\\R\Introduction")

#issuing the statement submits the hello.R to the current sessions and the results appears on the screen.
source("script1.R")

#R code from the hi.R is submitted and results again appear on the screen. in additions outputis append to the file myoutput
#and graphics output is saved to the file mygraphs.pdf
sink("myoutput",append=TRUE,split=TRUE)
pdf("mygraphs1.pdf")
source("script2.R")

#R code from ho.R is submitted and the results appear on the screen. This time, no text or graphics output is saved to files.
sink()
dev.off()
source("script3.R")