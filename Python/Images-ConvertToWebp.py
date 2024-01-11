# This file works with image files from AI software like SDUI, and compresses them using CWEBP.
# WEBP is a much more compressed format that uses far less space for good quality image files.
# This script keeps metadata and chunk information (specifically just the UserComment) so you can drag files back into the software and keep your prompts.
# Created by Wesley Pyburn (TroubleChute)
# https://github.com/TcNobo/TcNo-Random-Scripts

# Can't drag onto .py files?
# Try creating Images-ConvertToWebp.bat
# And enter the following:
# python Images-ConvertToWebp.py %*
# This should allow you to drag images onto the .bat, processing them with this file.
# NOTE: Both the .py file and bat file, named as above, should be in the same folder when run.

import sys
import os

from pathlib import Path
from PIL import Image
import subprocess
from subprocess import check_output

webpQuality = "90"
deleteOriginals = False

for arg in sys.argv:
	if not os.path.splitext(arg)[1].lower() in ['.jpg', '.jpeg', '.png']:
		print(f"\nFILE FORMAT NOT SUPPORTED: {arg}\n")
	else:
		print("PROCESSING:", arg)

		filename = arg
		filenameOut = f'{os.path.splitext(filename)[0]}.webp'

		## Convert to WEBP
		subprocess.call(['cwebp', '-q', webpQuality, filename, '-o', filenameOut])

		if os.path.splitext(arg)[1].lower() == '.png':
			## Copy PNG Chunk data from original PNG
			im = Image.open(filename)
			im.load()  # Needed only for .png EXIF data (see citation above)
			userComment = im.info['parameters']#.encode("unicode_escape").decode("utf-8")
			#print(userComment)

			#print("\n")
			#print(f'-UserComment="{userComment}"')
			#print("\n")

			## Write EXIF to WEBP
			subprocess.call(['exiftool', '-overwrite_original', f'-UserComment={userComment}', filenameOut])
			changed_data = check_output(['exiftool', filenameOut])
			print(changed_data.decode("utf-8"))
		elif os.path.splitext(arg)[1].lower() in ['.jpg', '.jpeg']:
			# Copy EXIF
			subprocess.call(['exiftool', '-overwrite_original', '-TagsFromFile', filename, '-exif:all', filenameOut])


		if deleteOriginals:
			if os.path.exists(filenameOut):
				os.remove(filename)
				print("Removed original file as webp exists.\n")
			else:
				print(f"\n\nDid not remove original file, as webp did not exist (conversion likely failed)\nFile: {filename}\nExpected output: {filenameOut}\n\n")