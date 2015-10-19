setRepositories()
install.packages("plyr") #Single package
install.packages(c("ggplot2","randomForest","RColorBrewer")) #Multiple packages
install.packages("devtools") #Required for installation from github
library(devtools) #Load package
install_github("slidify", "ramnathv") #Install package from github