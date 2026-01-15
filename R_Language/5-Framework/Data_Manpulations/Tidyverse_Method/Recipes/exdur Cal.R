####################################################################################################
###
### Program:      derive_orres_vs_vsstresn 
### Programmer:   Ganesh Babu G
### Date Created: 15JAN2026
###
### Input:        
###
### Ouput:        
###               
###
### Purpose:      
###
### Comment:      This program is update the VSTESTCD='BP and VBORRESS=168/11 split to 
###               VSTESTCD="SYSBP" VBORRES=168 VBSTRESN=168
###               VSTESTCD="DIASP" VBORRES=11 VBSTRESN=11
###
### Software:     Higher + 
###               RStudio 2025.09.1 Builder401
###               R version 4.5.1
###               tidyverse 2.0.0
###
### Modification: 
###
### Date        Programmer      Description
### ----        ----------      -----------
### 15JAN2026   Ganesh Babu     initiated
###
#######################################################################################################
EX<-EX %>% mutate(
  # 1. Convert Character to Date objects
  # ymd() handles "2025-01-01", but if you have times, use as_datetime()
  stdt = mdy(substr(EXSTDTC, 1, 10)), 
  endt = mdy(substr(EXENDTC, 1, 10)),
  
  # 2. Calculate the numeric difference
  # We add 1 because Clinical Duration is inclusive (Day 1 to Day 1 = 1 Day)
  duration_num = as.numeric(endt - stdt) + 1,
  
  # 3. Create the EXDUR string
  # We only calculate if both dates are present
  EXDUR = if_else(!is.na(duration_num), 
                  paste0("P", duration_num, "D"), 
                  NA_character_)
) %>%
  select(-stdt, -endt, -duration_num)
dplyr::last_dplyr_warnings()
