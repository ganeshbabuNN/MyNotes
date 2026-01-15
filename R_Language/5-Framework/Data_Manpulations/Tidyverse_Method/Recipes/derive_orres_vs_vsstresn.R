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
# 1. Separate the non-BP data (The 4,000 records you want to keep)
others_vs <- VS %>% 
  filter(VSTESTCD != "BP")

# 2. Transform the BP data (The 5,000 records that will expand to 10,000)
bp_transformed_vs <- VS %>%
  filter(VSTESTCD == "BP") %>%
  separate_longer_delim(c(VSORRES, VSSTRESC), delim = "/") %>%
  group_by(USUBJID, VISITNUM, VSSEQ) %>% 
  mutate(
    VSTESTCD = if_else(row_number() == 1, "SYSBP", "DIABP"),
    VSTEST   = if_else(VSTESTCD == "SYSBP", "Systolic Blood Pressure", "Diastolic Blood Pressure"),
    VSSTRESN = as.numeric(VSSTRESC)
  ) %>%
  ungroup()

# 3. Join them back together
# Your new total should be: (Original Others) + (Original BP * 2)
final_df_vs <- bind_rows(others, bp_transformed) %>%
  arrange(USUBJID, VISITNUM, VSSEQ)

# 4. reupdate the sequence number
final_df_vs <- final_df_vs %>%
  #group_by(USUBJID) %>%
  mutate(VSSEQ = row_number()) %>%
  ungroup()

## write to csv files
write_csv(final_df_vs,"C:/Users/ganes/Documents/Kriyababa/GitHub/datasets/clinical_datasets/sdtm/daibetes/csv/vs.csv",na="")

