# Reverses filenames in folder
# Example: Turns "12-02-2020.json" into "2020-02-12.json"
# Created 2020/02/09

# Created by Wesley Pyburn (TroubleChute)
# https://github.com/TcNoco/TcNo-Random-Scripts
import os

#------------------
# Options: 
splitchar = '-'
extensions = [] # Types of files you want to rename (Whitelist). Can be empty. -- ["json", "txt"]
test = True # Don't actully do anything just yet. Set to False when you are certain of the results.
#------------------

for filename in os.listdir('.\\'):
    if not filename == os.path.basename(__file__):
        extension = filename.split(".")[-1:] # Get filetype
        if (not extensions) or (extension[0] in extensions):
            newFilename = ""
            parts = "".join(filename.split(".")[0:-1]).split(splitchar) # Remove file type and split
            for i in range(len(parts),0,-1):
                newFilename += parts[i-1]+splitchar
            newFilename = "".join(newFilename.rsplit(splitchar, 1))
            newFilename += '.'+extension[0]
            
            if not test:
                os.rename(filename, newFilename)
            print(filename + " -> " + newFilename)
    
if test:
    print("\nHappy with the results? Want it to actually replace the file names? Change test from True to False.")