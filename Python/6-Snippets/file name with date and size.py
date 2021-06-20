import os
import time
import csv
myfile =[]
for root, dirs, files in os.walk(r"P:\XXXX\XXX\current\dm\program\macros"):
    for list in files:
#         list=os.path.join(root,list) # joining root and the file name for full path
        list=os.path.basename(list)  #only for the file name
        file_size = os.path.getsize(list)
        createDate = time.ctime(os.path.getmtime(list)) #getctime(list))
        listOfFiles = list, "Size: %.1f bytes"%file_size,createDate
        myfile.append(listOfFiles)

# opening the csv file in 'w+' mode 
file = open(r'C:\GBAG_Back\MyTraining\Python\5-Recepies\g4g.csv', 'w+', newline ='')
with file:     
    write = csv.writer(file) 
    write.writerows(myfile) 

	
###getting the file size
import os
os.chdir('C:\GBAG_Back\pyworkspace\ex9536_4388_20200407_060039')
b = os.path.getsize("ex9536_4388_20200407_060039.dat")
print (b >> 10)  # 5242880 kilobytes (kB) #bit operations
print (b >> 20 ) # 5120 megabytes (MB)
print (b >> 30 ) # 5 gigabytes (GB) #bit operations

###getting the file name
import glob, os
os.chdir(r"P:\nn9535\nn9535-4601\current\dm\program\macros")
for file in glob.glob("*.sas"):
    print(file)
	
#file name with directory name
pat=[]
for path, subdirs, files in os.walk(r"P:\nn9535\nn9535-4601\current\dm"):
    for name in files:
        print(os.path.join(path, name))
		
