# Extracts the digits of a single image for testing purposes
# Usage: ./see.py [filename]

import sys
import subprocess

# Check the amount of arguments given
lenArgs = len(sys.argv)

if lenArgs != 2:
    print("There must only be one argument. Exiting.")
    exit()

# Get the input file
inputFile = str(sys.argv[1])

# Call Tesseract
output = subprocess.check_output(["tesseract", inputFile, "stdout", "digits"])
print(output)
