import os
import pandas as pd
path =r"C:\Users\gbag\Downloads\pratice_Ud\text"
d = [] 
for filename in os.listdir(path):
    apath = os.path.join(path,filename)
    with open(apath,'r') as f:
        for line in f:
            fields = line.split('\t')
            d.append(fields)
            
pd.DataFrame(d)