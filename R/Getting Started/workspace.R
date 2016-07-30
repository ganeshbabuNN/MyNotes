#get the list of the current owrking directory
getwd()

#Changes the current workign directory to mydirectory
setwd("C:/R_workspace")

#create the directory if does not exists-OPTIONAL
dir.create() 

#list the objects in the current workspace
ls()

#Removes(deletes) one or more objects
rm(objectlist)

#provides informations about the available options
help(options)

#let you view or set current options
options()

#Displays your last # commands (default=25)
history(#)

#Save the commands history to myfile (default=.Rhistory)
savehistory("myfile")

#Reloads a commands history(default=.RHistory)
loadhistory("myfile")

#Save the workspace to myfile(default= .RData)
save.image("myfile")

#Save specific objects to a file
save(Objectlist,file="myfile")

#loads a workspace into the current session
load("myfile")

#Quit R. you will be prompted to save the workspace
q()
