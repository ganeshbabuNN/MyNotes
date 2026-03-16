#editing the R environment
#=========================
install.packages("usethis") # If you don't have it
usethis::edit_r_environ()
##see all the path variable
Sys.getenv("PATH")
pkgbuild::find_rtools()

#get the list of files
list.files(recursive = TRUE)
