#!/bin/bash

# Step 0 #
# Install 'acpi' and 'mpg123'
#   sudo apt-get install acpi mpg123

# Step 1 #
# Download/create your own .mp3 file to be played (or use 'merStromKort.mp3')
# Place it in a location of your choice, update path below

# Step 2 #
# Place this script inside /home/$YourName/bin
# Make sure to run 'sudo chmod +x <merStrom_script4cron.sh>' on it for permissions

# Step 3 #
# Open cron:
#   crontab -e
# Here, input the line below (modified to your path/username!!), on the last line
# */1 * * * * /home/$YourName/bin/merStrom_script4cron.sh

if acpi -b | grep -q Charging
then
    :
else
    if [ `acpi -b | awk ' { print ( $(NF)-0)}'`  -lt "99" ]; then
        /usr/bin/mpg123 /home/dota/Music/merStromKort.mp3
    fi
fi