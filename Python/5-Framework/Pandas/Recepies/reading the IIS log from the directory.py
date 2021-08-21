## https://gist.github.com/wh13371/e735bc865a494c35513e
import os
import glob
import pandas as pd
from datetime import datetime
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from plotly.offline import iplot
import plotly as py
import plotly.tools as tls
import cufflinks as cf
py.offline.init_notebook_mode(connected=True)
cf.go_offline()

startTime = datetime.now()
# modify the directory to point to the proper log dir
path =r'C:\Users\gbag\Desktop\VYKM Files\W3SVC2\W3SVC2'
os.chdir(path) 
log_field_names = ['date', 'time', 's-ip', 'cs-method', 'cs-uri-stem', 'cs-uri-query', 's-port', 'cs-username', 'c-ip',
                   'cs(User-Agent)', 'cs(Referer)', 'sc-status', 'sc-substatus', 'sc-win32-status', 'time-taken']
l = [] 
for dirname, dirnames, filenames in os.walk(path):
    for subdirname in filenames: 
            #encoding the data to UTF-8 encoding
            for filelineno, line in enumerate(open(subdirname, encoding="utf-8")):
                #ignore the line with #
                if not line.startswith('#'):
                    fields = line.split()
                    d = dict(zip(log_field_names, fields))
                    l.append(d)

df1 = pd.DataFrame(l)
df1['date']=pd.to_datetime(df1['date'], utc=False)
print(datetime.now() - startTime)
df1.shape

pd.options.mode.chained_assignment = None
df1['date']=pd.to_datetime(df1['date'], utc=False)
df2=df1[~df1['cs-uri-stem'].str.contains(r'test.pdf')]
df3=df2[df2['cs-uri-stem'].str.contains(r'.pdf', case=False, na=False)]
df3['Trial_no']=df3['cs-uri-stem'].str.split('/',expand=True)[1].copy(deep=True)
df4=df3[['Trial_no','date']]
df4['dtyymr']=df4['date'].dt.strftime('%Y%m').copy(deep=True)
df4['dtyr']=df4['date'].dt.strftime('%Y').astype(int).copy(deep=True)
df4['dtyr1']=df4['date'].dt.strftime('%Y').astype(int).copy(deep=True)
df4['dtyymr1']=df4['date'].dt.strftime('%Y%m').copy(deep=True)

#function to ignore some specific text
import re
source = ".well-known s"

replacements = {
    '.well-known': '', # replace 'is' with 'was' 
    'uat':'',
    '[trial]':'',
    'pdf':''
}

def replace(source):
    finder = re.compile("|".join(re.escape(k) for k in replacements.keys())) # matches every string we want replaced
    result = []
    pos = 0
    while True:
        match = finder.search(source, pos)
        if match:
            # cut off the part up until match
            result.append(source[pos : match.start()])
            # cut off the matched part and replace it in place
            result.append(replacements[source[match.start() : match.end()]])
            pos = match.end()
        else:
            # the rest after the last match
            result.append(source[pos:])
            break
    return "".join(result)
	
df4['Trial_no']=df4['Trial_no'].apply(replace)
df5=pd.pivot_table(df4,index=['Trial_no'],values=['dtyr'],columns=['dtyr1'],aggfunc=np.count_nonzero)
# .apply(agecheck, axis=1)
df5.columns = df5.columns.droplevel(0) #remove amount
df5.columns.name = None               #remove categories
df6 = df5.reset_index() 
df6=df6[df6['Trial_no']!=''].fillna(0)
df7=df6.set_index('Trial_no')

df8=pd.DataFrame(df7.mean(axis = 1),columns=['Mean'])
df8.reset_index(inplace = True) 
df8