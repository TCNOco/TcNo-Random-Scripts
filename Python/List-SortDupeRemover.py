# Reads all lines from a file, removes duplicates and saves them sorted into another file.
# Created by Wesley Pyburn (TroubleChute)
# https://github.com/TcNobo/TcNo-Random-Scripts

#------------------
# Define files here manually, if you'd like to not be asked.
inputFile = ""
outputFile = ""
#------------------

if not inputFile:
    inputFile = input("Input file's name/location: ")
if not outputFile:
    outputFile = input("Output file's name/location: ")

uniqeLines = set(open(inputFile).readlines())
open(outputFile, 'w').writelines(set(uniqeLines))

print(f"-> Complete.\n-> Lines: {len(uniqeLines)}")