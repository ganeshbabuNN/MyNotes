import os
import pandas as pd

#Setting the directory
path = os.chdir("C:\GBAG_Back\pyworkspace\datasets\BRGA Reports\stdm issue log")
files = os.listdir(path) 

files_xls = [f for f in files if f[-4:] == 'xlsx']
df = pd.DataFrame()
for f in files_xls:  
    sht_name = pd.ExcelFile(f) 
    sht_name1=sht_name.sheet_names
    for i in sht_name1:
        if (i.find("Log") != -1) :
            sht_name3=i
            data = pd.read_excel(f, sht_name3,skip_blank_lines=True)
            print("imported the file name into df of sheet name", sht_name3)
            data['filename']=f
            df = df.append(data)  
            print("count of records of ",len(df)) 