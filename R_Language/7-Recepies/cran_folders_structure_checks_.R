#1. Install devtools and usethis (once only)
#These two packages create the entire CRAN structure automatically.
install.packages(c("devtools", "usethis", "roxygen2","testthat", "knitr", "rmarkdown"))
library(devtools)
library(usethis)
library(roxygen2)
library(testthat)
library(knitr)
library(rmarkdown)

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
#Creates tests/ and tests/testthat/ automatically.
usethis::use_testthat()
#usethis::use_test()
testthat::test_local()
usethis::use_test("recon")
usethis::use_test("sdtm")
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
#Fills man/ with .Rd files from the roxygen2 comments in your R/ files.
devtools::document()   # fills man/ automatically
devtools::test()       # runs all 23 tests
devtools::check()      # full CRAN check — target: 0 errors | 0 warnings | 0 notes
#After devtools::check() passes cleanly, your package is ready to submit.
