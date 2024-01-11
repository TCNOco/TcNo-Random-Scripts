# Moves files ending in "_0", "_1" and "_2" into folders "0", "1" and "2" respectively.
# (My transcoded video goes into: "video.mp4", "audio_0.aac", ".._1.aac" and ".._2.aac". Having it in folders makes adding them to the Premiere Pro timeline easier, drag entire folders in.)
# Created 2020/02/09
# Example:
# .\2020-01-12 13-46-50.mp4
# .\2020-01-12 13-46-50_0.aac
# .\2020-01-12 13-46-50_1.aac
# .\2020-01-12 13-46-50_2.aac
# to
# .\2020-01-12 13-46-50.mp4
# .\0\2020-01-12 13-46-50_0.aac
# .\1\2020-01-12 13-46-50_1.aac
# .\2\2020-01-12 13-46-50_2.aac


# Created by Wesley Pyburn (TroubleChute)
# https://github.com/TcNobo/TcNo-Random-Scripts
import os

#------------------
# Options: 
splitchar = '_'
extensions = ["aac"] # Types of files you want to rename (Whitelist). Can be empty. -- ["mp4", "aac"]
test = False # Don't actully do anything just yet. Set to False when you are certain of the results.
#------------------

for filename in os.listdir('.\\'):
    if not filename == os.path.basename(__file__):
        extension = filename.split(".")[-1:] # Get filetype
        if (not extensions) or (extension[0] in extensions):
            number = filename.split(splitchar)[-1:][0].split(".")[0] # Gets "0", "1"... and removes extension.
            if not os.path.exists(number):
                os.makedirs(number)
            newFilename = number + "\\" + filename
            
            if not test:
                os.rename(filename, newFilename) # Moves the file
            print(filename + " -> " + newFilename)
if test:
    print("\nHappy with the results? Want it to actually replace the file names? Change test from True to False.")