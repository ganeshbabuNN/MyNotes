
os.chdir(r'\\whale\projstat\nn9535\nn9535-4601\current\dm\data\sdtm\jmpclin')
ddict={}
startTime = datetime.now()
for file in os.listdir():
    if file.endswith(".sas7bdat"):
        name = os.path.splitext(file)[0]
        df, meta = pyd.read_sas7bdat(file)
        # save the dataframe to a dictionary
        ddict[name]= df
        # create a variable
        exec(name + "= df.copy()") 
print(datetime.now() - startTime)



in R 
library(haven)
library(tidyverse)

sdtmr <- 'P:\\nn9535\\nn9535-4601\\current\\dm\\data\\sdtm_raw'
sdtme <- 'P:\\nn9535\\nn9535-4601\\current\\dm\\data\\sdtm'
sdtmjmp <- 'P:\\nn9535\\nn9535-4601\\current\\dm\\data\\sdtm\\jmpclin'

library(haven)

setwd("/homedirs/gbag/projstat/nn9535/nn9535-4601/current/dm/data/sdtm") 
print(sdtmjmp)
files <- list.files(path = path, pattern="*.sas7bdat", full.names=FALSE)
print(files)

mydf <- list()
for (i in 1:length(files)){
  print(files[i])
  filename <- paste0(files[i])
  #print(filename)
  #browser() # if you like to step through the file
  mydf[[i]] <- haven::read_sas(data_file=filename)
  #print(names(mydf[[i]]))
  print(filename)
  filename[i] <- as.data.frame(mydf[i])
}