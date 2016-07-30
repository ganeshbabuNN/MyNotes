#set the file path
setwd(file.path("C:","Users","Ganesh Babau","Documents","GitHub","ProgrammingLanguages","R","Data Management"))

#Sample data
manager <- c(1,2,3,4,5)
date <- c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09")
country <- c("US","US","UK","UK","UK")
gender <- c("M","F","F","M","F")
age <- c(32,45,25,39,95)
q1 <- c(5,3,3,3,2)
q2 <- c(4,5,5,3,2)
q3 <- c(5,2,5,4,1)
q4 <- c(5,5,5,NA,2)
q5 <- c(5,5,2,NA,1)
leadership <- data.frame(manager,date,country,gender,age,q1,q2,q3,q4,q5,stringsAsFactors = FALSE)


#the default date format in R is  yyyy-mm-dd
todayDate<- Sys.Date() # get today date
#character data
strDates <- c("01/05/1983","08/06/1975")
#converting into the dates into default format.
#The below statements reads the format and display the default format
dates <- as.Date(strDates,"%m/%d/%Y")
#converting the above datasets to default format
myformat <- "%y/%d/%m"
leadership$date <- as.Date(leadership$date,myformat)
#importent function in date
Sys.Date() #displays current system date
Sys.time() #displays date with time
date() # display date in representing the calender dates
#Customising output date format using format() functions
leadership$date <- format(Sys.Date(),format="%B %d %Y %A")
#format options 
format(Sys.Date(),format="%d")#for day as number
format(Sys.Date(),format="%a")#for week day short
format(Sys.Date(),format="%A")#for week day long
format(Sys.Date(),format="%m")#for month number
format(Sys.Date(),format="%b")#for month in short 
format(Sys.Date(),format="%B")#for month in long 
format(Sys.Date(),format="%y")#for year two digit
format(Sys.Date(),format="%Y")#for year four digit

#getting difference of days
birthdate <- as.Date("1983-06-13")
days <- Sys.Date()-birthdate
#getting difference between dates
difftime(Sys.Date(),birthdate,units ="weeks")# in weekends
difftime(Sys.Date(),birthdate,units ="mins")# in minds
difftime(Sys.Date(),birthdate,units ="sec")# in seconds
difftime(Sys.Date(),birthdate,units ="hour")# in hour
difftime(Sys.Date(),birthdate,units ="days")# in days

format(as.Date("1983-06-13"),format="%b")
#converting dates to character values
strDates <- as.character(birthdate)
#help
?as.Date
?strftime
?ISOdatetime # formatting dates and times

#popular packages 
install.packages("lubridate") # A lot of functions in handling dates-times for parsing,extracting and performing arthemtic calculations on date-times
install.packages("timeDate") #For complex calcuation with dates with multiple time zones