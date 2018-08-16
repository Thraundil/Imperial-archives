# Step 0 #
# Install 'acpi' and 'mpg123'
#   sudo apt-get install acpi mpg123

# Step 1 #
# Download/create your own .mp3 file to be played (or use 'merStromKort.mp3')
# Place it in a location of your choice, update path below

# Step 2 #
# Open cron:
#   crontab -e
# Here, input the script below (modified to your path/username!!),
# on the last line. Save and quit.

*/1 * * * * if [ `acpi -b | awk ' { print ( $(NF)-0)}'`  -lt "15" ] ; then mpg123 /home/dota/Music/merStromKort.mp3 ; fi