#Global environment
match.score <- 300 #assign variable in global environment
match.score  #get variable from global environment
get("match.score",globalenv())  #get variable from global environment

#Create Custom environment
my.environment <- new.env() #create a new custom environment
parent.env(my.environment) #Check parent environment

#Assign a variable in custom environment
assign("match.score",320,my.environment) #assign a variable in custom environment
my.environment[["match.score"]] <- 320 #assign a variable in custom environment
my.environment$match.score <- 320 #assign a variable in custom environment

#Get variable from custom environment
get("match.score",my.environment)
my.environment[["match.score"]] #get variable of custom environment
my.environment$match.score #get variable of custom environment