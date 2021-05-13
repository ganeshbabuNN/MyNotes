#All the Batch mode processing can be run in the OS console like command prompt in windows or shell in linux

#Normal way
#First argument is the path of the Binary R\R-3
#Second argument is the CMD Batch and options --vanilla
#Third argument is the source file
"C:\Program Files\R\R-3.3.1\bin\R.exe" CMD BATCH --vanilla "C:\R_Workspace\hello.R"

#Setting the R envionrment path with location of binary and output path
R CMD BATCH --vanilla "C:\R_Workspace\hello.R" "C:\R_Workspace\hello1.Rout"

#Setting the R envionrment path
#R script file pointed to the current directory and the output executes at the current directory.
R CMD BATCH --vanilla <hello.R>hello-R.out

