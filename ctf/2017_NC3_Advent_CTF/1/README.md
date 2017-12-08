*** Week 1, PolitiAdventCTF
**    by Emil 'Dota' Bak @ Pwnies

* Handout *
- 'one.jpg'


** STEP 0:
Starting out, we are given a 'one.jpg' file, a picture displaying
a big '1' on a 'hackster' background. The visual part of the image
itself does not give any hints or clues.
As with most images, start out by hex-dumping the image, and look
for clues:

```
xxd one.jpg
```
OR
```
hd one.jpg
```

A .jpg image ends with the following 2 bytes: FF D9
Anything beyond FF D9 is not part of the .jpg image, and may as such
be a hidden file(s). We notice the 2 bytes following FF D9 is 50 4B,
in ascii known as 'PK'. This indicates a .zip file is hidden within.
The easiest way to unzip the hidden file, is simply to run unzip.
```
unzip one.jpg
```
This should give us a new file called 'igen'.



** STEP 1:
We now have an unknown file named 'igen'. Analyse the file via
the file command
```
file igen
```
We learn the file is a 'SGI XFS filesystem' file, which means it is
a mountable file. Let's mount it!
```
sudo mount igen /nas/
```
> NOTE: If this fails, it might be because you don't have a /nas/ folder in your root,
> fix this by creating an empty folder with said name in your root directory.

Open the folder in which you mounted the SGI XFS file, and notice a new file 'og'.
Copy/Move this file, and then unzip it (via 'file' command we know it's a zip file).
You are now left with another file named 'og'.



** STEP 2:
Via the file command, we notice the new 'og' file is a 'Macintosh HFS Extended version' datatype,
which means it can be (surprise) mounted.
Before we mount it, let's unmount the prior file, and then mount our new 'og' file:
```
sudo umount /nas/
sudo mount og /nas/
```
We get a new (.zip) file named 'igen', which we unzip, and recieve a new file: 'og'
... Starting to see a patern here?



** STEP 3:
The new 'og' file is a (via file command) known to be a 'Minix Filesystem' file, which
can be... *sigh*.. Mounted.
```
sudo umount /nas/
sudo mount og /nas/
```
The output 'igen' is, however, not a .zip file



** STEP 4:
The file 'igen' is a 'Linux Compressed ROM File System data', which can be mounted:
```
sudo umount /nas/
sudo mount igen /nas/
```
This time, we get 2 files out, and it looks like the unzip/mount nightmare is over:
'secret' and 'story'



** (FINAL) STEP 5:
Both 'secret' and 'story' are simple ascii based text files. 'story' contains a small
semi-unrelated sentence, while 'secret' is one giant (269.100 characters) long one-lined file.

Looking at 'secret', it's easy to notice it seemingly only consists of (ascii) hex values (x34, X1E, etc).
By performing a hexdump on 'secret'...
```
hd one.jpg
```
... It can be seen that the hex-values we're viewing (see the strings on the right side of the hex-dump), 
is only a representation. What we want is a file consisting of the hex-values found in 'secret'.
This can be done with the following python code (step5.py) :
```
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
```
Try and perform a hex-dump on the 'output' file, and compare it with the hex-dump of 'secret', if you're
unsure as to what the python script did.

Finally, with the new file 'output', we can 'cat output' in a terminal, zoom far out,
drag the terminal-screen a bit, and we can see a hidden 'ascii-art' flag hidden within.

HINT: If the given terminal does not support all characters given (some might be blank etc), open
your file 'output', navigate to such a blank/weird character, and replace all characters in the file
(via an editor) with another (K,Q,N etc..)


## The Flag
Can be seen in 'flag.png'










