# This file works with image files from AI software like SDUI, and compresses them using CWEBP.
# WEBP is a much more compressed format that uses far less space for good quality image files.
# This script keeps metadata and chunk information (specifically just the UserComment) so you can drag files back into the software and keep your prompts.
# Created by Wesley Pyburn (TroubleChute)
# https://github.com/TcNobo/TcNo-Random-Scripts

import sys
import os

from pathlib import Path
from PIL import Image
import subprocess
from subprocess import check_output

webpQuality = "90"

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
			subprocess.call(['exiftool', f'-UserComment={userComment}', filenameOut])
			changed_data = check_output(['exiftool', filenameOut])
			print(changed_data.decode("utf-8"))
		elif os.path.splitext(arg)[1].lower() in ['.jpg', '.jpeg']:
			# Copy EXIF
			subprocess.call(['exiftool', '-TagsFromFile', filename, '-exif:all', filenameOut])
