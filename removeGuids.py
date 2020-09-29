import sys
import os
import re

folderPath = sys.argv[1]

count = 0

if folderPath[-1] != "\\":
    folderPath = folderPath + "\\"

for filename in os.listdir(folderPath):

    orgName = filename

    src = folderPath + filename

    guid = re.search("([-_]*[0-9a-zA-Z]{8}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{12})", filename)

    if guid:

        newName = filename.replace(guid.group(1), '')
        dst = folderPath + newName
        os.rename(src, dst)

        print("Success: " + orgName + "  ------>  " + newName)
        count = count + 1
    
if count == 0:
    print("---------------------------------------------------\nNo guids found\n---------------------------------------------------")
else:
    print(f"---------------------------------------------------\nDone. Removed {count} guid(s)\n---------------------------------------------------")


