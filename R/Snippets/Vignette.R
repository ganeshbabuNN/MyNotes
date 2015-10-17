vignette() #List all vignettes in attached packages
vignette(package = .packages(all.available = TRUE)) #List all vignettes in all installed packages
vignette(package = 'parallel') #List all vignettes in parallel package
vignette('parallel', package = 'parallel') #Show vignette for parallel