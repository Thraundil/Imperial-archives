#!/usr/bin/env python
# part 5: 'secret' conversion 

import binascii

# Reads the data (as a list), joins it up to one giant string
inputData = ''.join(open('secret').readlines())

# Splits the data with 'x' as a list, so 'x34' becomes '34' etc.
splitData = inputData.split("x")

# Deletes the current values in the file
open("output", 'w').close()

# Write the actual hex-value to a new file
with open("output", "a") as myfile:
    for x in splitData:
        myfile.write(binascii.unhexlify(x))