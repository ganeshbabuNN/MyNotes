####################################################################################################
###
### Program:      githubrepo_fix_repo_filenames.py
### Programmer:   Ganesh Babu G
### Date Created: 16DEC2025
###
### Input:        github_filename_problems.csv generated from githubrep_restrictions_report.py
###
### Ouput:        githubrepo_fix_repo_filenames.csv
###
### Purpose:      this program is to fix the filenames and folder names which are not allowed by windows upload or download based on the report generated from githubrep_restrictions_report.py
###
### Comment:      
###
### Software:     python 3.13+, requests,pandas,os,re, VSCode 1.107
###
### Modification: 
###
### Date        Programmer      Description
### ----        ----------      -----------
### 16DEC2025   Ganesh Babu     initial release
###
#######################################################################################################
import os
import re
import csv

# ------------------ Rules ------------------
WINDOWS_RESERVED = {
    "CON", "PRN", "AUX", "NUL",
    *(f"COM{i}" for i in range(1, 10)),
    *(f"LPT{i}" for i in range(1, 10)),
}

FORBIDDEN_CHARS = r'[<>:"/\\|?*]'

# ------------------ Helpers ------------------
def sanitize_name(name):
    original = name

    # Split extension
    base, ext = os.path.splitext(name)

    # Reserved name fix
    if base.upper() in WINDOWS_RESERVED:
        base = f"{base}_fixed"

    # Remove forbidden chars
    base = re.sub(FORBIDDEN_CHARS, "", base)

    # Replace spaces
    base = base.replace(" ", "_")

    # Strip trailing dots/spaces
    base = base.rstrip(" .")

    # Collapse underscores
    base = re.sub("_+", "_", base)

    new_name = base + ext
    return original, new_name


# ------------------ Scanner + Fixer ------------------
def fix_repo(root_path):
    log_rows = []

    # Walk bottom-up so folders rename safely
    for root, dirs, files in os.walk(root_path, topdown=False):

        # ---- Fix files ----
        for name in files:
            old, new = sanitize_name(name)
            if old != new:
                old_path = os.path.join(root, old)
                new_path = os.path.join(root, new)

                if not os.path.exists(new_path):
                    os.rename(old_path, new_path)
                    log_rows.append([old_path, new_path, "FILE"])

        # ---- Fix directories ----
        for name in dirs:
            old, new = sanitize_name(name)
            if old != new:
                old_path = os.path.join(root, old)
                new_path = os.path.join(root, new)

                if not os.path.exists(new_path):
                    os.rename(old_path, new_path)
                    log_rows.append([old_path, new_path, "DIRECTORY"])

    # ---- Export CSV ----
    if log_rows:
        with open("filename_fixes.csv", "w", newline="", encoding="utf-8") as f:
            writer = csv.writer(f)
            writer.writerow(["old_path", "new_path", "type"])
            writer.writerows(log_rows)

        print("Fixes applied successfully")
        print("Log saved to filename_fixes.csv")
    else:
        print("No filename issues found")


# ------------------ Run ------------------
if __name__ == "__main__":
    fix_repo(r"C:\Users\ganes\Downloads\MyNotes")
