# Scripts, programs and more
 -- A general purpose repository by **Emil 'Dota' Bak, @DIKU**

# Content:
**howToGit/updateAll.sh**: A shellscript to update all git repositories in a ceartain folder.

**toHex**: Script for converting binary, decimal and octal to hex.

**toAscii**: Script for converting binary, decimal and hex to readable Ascii-characters.

**KUPasswordChanger**: Tired of having to change your KU password every 6 months? Suffer no more!

**PizzaRoulette**: Fun food-game for parties! Everyone picks a number > 100, get a random pizza + topping!


## How to inbed personal scripts to bash:
If you want to use/save any of the following .py programs to your bash (Linux):
* 1: Create a bin folder in your home repository, if one does not already exist (mkdir ~/bin)
* 2: Put files (toHex.py etc) into ~/bin
* 3: Go to your .bashrc (vim ~/.bashrc)
* 4: Add a command, preferably at the end of the file. Example: alias tohex='python ~/bin/toHex.py $1'
* 5: Restart your terminal, and you're done!
