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
### Purpose:      Convert any files types to excel in the new directly without affecting the old files
###               and create a excel file 
###               example : ae.csv to ae.xlsx...etc
### Comment:          
###
### Software:     VSCODE  1.107.0+
###               Python 3.142+
###               library os,pandas 2.3.3.
###
### Modification: 
###
### Date        Programmer      Description
### ----        ----------      -----------
### 08JAN2026   Ganesh Babu G     initial release
###
#######################################################################################################

import os
import pandas as pd
import logging
from datetime import datetime

# ===== USER INPUT =====
input_folder = r"C:\Users\ganes\Documents\Kriyababa\GitHub\datasets\clinical_datasets\sdtm\daibetes\csv"   # change this
# ======================

# Output folder
output_folder = os.path.join(input_folder, "excel")
os.makedirs(output_folder, exist_ok=True)

# Log file path
log_file = os.path.join(input_folder, "conversion_log.txt")

# Configure logging
logging.basicConfig(
    filename=log_file,
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

logging.info("=== File Conversion Started ===")
logging.info(f"Input Folder: {input_folder}")
logging.info(f"Output Folder: {output_folder}")

for filename in os.listdir(input_folder):
    file_path = os.path.join(input_folder, filename)

    # Skip directories
    if os.path.isdir(file_path):
        logging.info(f"Skipped directory: {filename}")
        continue

    name, ext = os.path.splitext(filename)
    ext = ext.lower()

    try:
        # Read based on file type
        if ext == ".csv":
            df = pd.read_csv(file_path)

        elif ext in [".txt", ".dat", ".tsv"]:
            df = pd.read_csv(file_path, sep="\t", engine="python")

        elif ext in [".xlsx", ".xls"]:
            df = pd.read_excel(file_path)

        else:
            msg = f"Skipped unsupported file: {filename}"
            print(msg)
            logging.warning(msg)
            continue

        # Output Excel file path
        output_file = os.path.join(output_folder, f"{name}.xlsx")

        # Skip if Excel already exists
        if os.path.exists(output_file):
            msg = f"Skipped (already exists): {output_file}"
            print(msg)
            logging.info(msg)
            continue

        # Write to Excel
        df.to_excel(output_file, index=False)

        msg = f"Converted: {filename} → excel/{name}.xlsx"
        print(msg)
        logging.info(msg)

    except Exception as e:
        msg = f"Error processing {filename}: {e}"
        print(msg)
        logging.error(msg)

logging.info("=== File Conversion Completed ===")

