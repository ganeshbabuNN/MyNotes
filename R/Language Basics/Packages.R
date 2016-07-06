#Installing a package
install.packages("Hmisc")

#if the packages has any other dependencies supplies a options
install.packages("Hmisc",dependencies=TRUE)

#update the packages if any update from author
update.packages("Hmisc")

#load the package for the session
library("Hmisc")

#removing the packages
remove.packages("Hmisc")

#learning about a package
help(package="Hmisc")


