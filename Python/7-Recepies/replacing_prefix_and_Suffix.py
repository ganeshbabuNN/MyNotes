####################################################################################################
###
### Program:      
### Programmer:   Ganesh Babu G
### Date Created: 08JAN2026
###
### Input:        the directory path where the files are stored
###
### Ouput:        NA
###
### Purpose:      To Remove the prefix and suffix of the given file  for
###               example : sdtm_ae_20260106_201311.csv to ae.csv...etc
### Comment:      n     
###
### Software:     VSCODE  1.107.0
###               Python 3.142+
###               library os.
###
### Modification: 
###
### Date        Programmer      Description
### ----        ----------      -----------
### 08JAN2026   Ganesh Babu G     initial release
###
#######################################################################################################

import os

# Folder containing your files
folder_path = r"C:\Users\ganes\Documents\Kriyababa\GitHub\datasets\clinical_datasets\sdtm\daibetes\csv"   # change this

SUFFIX_LENGTH = 1 + 15   # underscore + 15 characters (adjust if needed)

for filename in os.listdir(folder_path):
    if filename.lower().endswith(".csv"):

        name, ext = os.path.splitext(filename)

        # Remove prefix (everything before first "_")
        if "_" in name:
            name = name.split("_", 1)[1]

        # Remove suffix of fixed length
        if len(name) > SUFFIX_LENGTH:
            name = name[:-SUFFIX_LENGTH]

        new_name = name + ext

        old_path = os.path.join(folder_path, filename)
        new_path = os.path.join(folder_path, new_name)

        # 🔒 Skip if target file already exists
        if os.path.exists(new_path):
            print(f"Skipped (already exists): {new_name}")
            continue

        # Rename file
        if old_path != new_path:
            os.rename(old_path, new_path)
            print(f"Renamed: {filename} → {new_name}")
