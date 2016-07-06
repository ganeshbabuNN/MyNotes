#general help - open the help browser
help.search()

#help on the specific functions ( quotations are optional)
help("sd") or ?sd

#searches the help system for the instance of the string "sd"
help.search("sd") or ??sd

#example of the function sd ( quotation are optional)
example("sd")

#searches for the string sd in online help manuals and archived mailing list
RSiteSearch("sd")

#list of all available functions with sd in their name
apropos("sd", mode="function")

#lists all available example datasets contained in currently loaded packages
data()

#list all avaiable vignettes for currently installed packages
vignette()

#displays specific vignettes for topic XXX
Vignette("XXX")
