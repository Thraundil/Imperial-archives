#!/bin/bash
# Put this file (together with toHex.py and tohex) into your Downloads folder

cd
mkdir bin
mkdir bin/toHex
cd ../Downloads
mv toHex.py ../bin/
mv tohex ../bin/
cd
cd bin
chmod u+x tohex
cd
export PATH="~/bin:$PATH"
source .bashrc