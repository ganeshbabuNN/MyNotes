####################################################################################################
###
### Program:      githubrep_restrictions_report.py
### Programmer:   Ganesh Babu G
### Date Created: 15DEC2025
###
### Input:        github repo path and local path
###
### Ouput:        github_filename_problems.csv
###
### Purpose:      The purpose of this program to to get report to where to provide the list of files and folders which are not allowed by windows upload or download.
###
### Comment:      I used githubdeskstop where i was not able download the my repo to my local desktop hence i develop this problem.
###
### Software:     python 3.13+, requests,pandas,os,re, VSCode 1.107
###
### Modification: 
###
### Date        Programmer      Description
### ----        ----------      -----------
### 15DEC2025   Ganesh Babu     initial release
###
#######################################################################################################
import os
import re
import requests
import pandas as pd

# ---------- Validation rules ----------
WINDOWS_RESERVED_NAMES = {
    "CON", "PRN", "AUX", "NUL",
    *(f"COM{i}" for i in range(1, 10)),
    *(f"LPT{i}" for i in range(1, 10)),
}

FORBIDDEN_CHARS = r'[<>:"/\\|?*]'

def validate_filename(filename):
    problems = []

    base_name = filename.split('.')[0].upper()

    # Windows reserved names
    if base_name in WINDOWS_RESERVED_NAMES:
        problems.append("Uses Windows reserved name")

    # Forbidden characters
    if re.search(FORBIDDEN_CHARS, filename):
        problems.append("Contains forbidden characters")

    # Leading or trailing space/dot
    if filename.startswith(" ") or filename.endswith(" ") or filename.endswith("."):
        problems.append("Begins/ends with space or period")

    # Spaces
    if " " in filename:
        problems.append("Contains spaces (use hyphens/underscores)")

    # Length
    if len(filename) > 255:
        problems.append("Filename exceeds 255 characters")

    return problems


# ---------- GitHub Repo Scanner ----------
def scan_github_repo(user, repo, branch="main", token=None):

    print(f"\nScanning GitHub repo: {user}/{repo}@{branch}\n")

    problems_list = []  # Store all filename issues for CSV export

    api_url = f"https://api.github.com/repos/{user}/{repo}/git/trees/{branch}?recursive=1"
    
    headers = {}
    if token:
        headers["Authorization"] = f"Bearer {token}"

    response = requests.get(api_url, headers=headers)

    if response.status_code != 200:
        print("GitHub API Error")
        print("Status Code:", response.status_code)
        print("Response:", response.text)
        return

    data = response.json()

    if "tree" not in data:
        print("GitHub response did NOT include a file tree.")
        print("Full response:", data)
        return

    # Process each file or directory in tree
    for item in data["tree"]:
        filename = os.path.basename(item["path"])
        if not filename:
            continue

        issues = validate_filename(filename)
        if issues:
            for issue in issues:
                problems_list.append({
                    "file_path": item["path"],
                    "filename": filename,
                    "issue": issue
                })

            # Print to console also
            print(f"Problem: {item['path']}")
            for issue in issues:
                print(f"   - {issue}")
            print()

    # ---------- Export to CSV ----------
    if problems_list:
        df = pd.DataFrame(problems_list)
        df.to_csv("github_filename_problems.csv", index=False)
        print("Problems exported to: github_filename_problems.csv")
    else:
        print("No filename problems found!")

# ---------- Run ----------
if __name__ == "__main__":
    scan_github_repo("ganeshbabuNN", "MyNotes", branch="master")
