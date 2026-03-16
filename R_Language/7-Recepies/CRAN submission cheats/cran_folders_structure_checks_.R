#CRAN Publishing Check code
#=========================
#1. Install devtools and usethis (once only)
#These two packages create the entire CRAN structure automatically.
install.packages(c("devtools", "usethis", "roxygen2","testthat", "knitr", "rmarkdown","Quarto"))
library(devtools)
library(usethis)
library(roxygen2)
library(testthat)
library(knitr)
library(rmarkdown)
library(quarto)
library(rDataRecon)

#2.Create the package skeleton
#Run this ONE command — it creates all required folders and starter files instantly.
usethis::create_package("C:/Users/ganes/Documents/Kriyababa/GitHub/rDataRecon")
#usethis::create_package("path/to/rDataRecon")
# Example on Windows:  usethis::create_package("C:/Users/You/rDataRecon")
# Example on macOS:    usethis::create_package("~/Desktop/rDataRecon")
#RStudio opens automatically with the new project. The folder structure is created for you.

#3.Add MIT licence
#Writes LICENSE and LICENSE.md automatically — replace "Your Name" with your real name.
usethis::use_mit_license("Ganesh Babu G")

#4.Copy the R/ source files
#Paste the three downloaded .R files into the R/ folder that was just created:

#5.Set up testthat
##Creates tests/ and tests/testthat/ automatically.
usethis::use_testthat()
##create a new test file using use_test()
usethis::use_test()
##modify the existing test-X.R files
usethis::use_test("recon")
usethis::use_test("sdtm")
usethis::use_test("adam")
##testing all the test-x().R calls
testthat::test_local()
# Then paste test-recon.R into tests/testthat/

#6.Set up the vignette
#Creates the vignettes/ folder and a starter .Rmd file.
usethis::use_vignette("introduction")

#7.Set up GitHub Actions CI
#Creates .github/workflows/R-CMD-check.yaml automatically.
usethis::use_github_action_check_standard()
usethis::use_github_action("check-standard")
usethis::use_github_action_check_release()

#8.Generate documentation and verify
devtools::document()   # fills man/ automatically
devtools::test()       # Runs every test in your package and tells you if they passed or failed.
devtools::check()      # full CRAN check — target: 0 errors | 0 warnings | 0 notes
##Before publishing run
devtools::check(cran = TRUE)

#Run local installation from github.
#==================================
##1.Install the tool that allows GitHub installs
install.packages("remotes")
##2. Install the package directly from GitHub
remotes::install_github("ganeshbabunn/rDataRecon") #Replace "username" with the actual owner of the repo
##Fix help documentation index in R packages :help index was not built
##if the man folder is empty, documentation was not generated
##Reload the package if required.
devtools::load_all()
###check if required
packageDescription("rDataRecon")
help(package = "rDataRecon")
##Regenerate documentation if any changes
devtools::document()
devtools::install()
?rDataRecon
##Rebuild and push to GitHub
devtools::check()
##then commit to git
#git add .
#git commit -m "add documentation"
#git push
##Then reinstall from GitHub:
remotes::install_github("ganeshbabunn/rDataRecon", build_vignettes = TRUE)
library(rDataRecon)

#version update
usethis::use_version("patch")   # 0.0.0.9000 → 0.0.1
usethis::use_version("minor")   # 0.0.0.9000 → 0.1.0  ✅ recommended for first CRAN
usethis::use_version("major")   # 0.0.0.9000 → 1.0.0
##Rebuild  the package
devtools::load_all()
