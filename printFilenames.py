import sys
import os

folderPath = sys.argv[1]

for filename in os.listdir(folderPath):

    if "." in filename:
        print(filename)

    