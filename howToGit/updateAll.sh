#!/bin/sh
# By Emil S. Bak, 2017 DIKU

# BEFORE YOU RUN THIS for the first time, run this command,
# to enable git up (a better 'git pull'):
# $ > git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'

# Put this shellscript into your workfolder with all your git repo's in
# If you can't run it, give it permission:
# $ > chmod +x updateAll.sh

for repo in cokepc dikulan/website Imperial-archives infoscreen teamLinux SE2017-Team1; do
    (
    echo "*************** Now updating ${repo} ***************" | lolcat
    cd "${repo}" && git checkout master && git up)
done

echo "------------------------------------------------------------" | lolcat
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" | lolcat
echo "             All git repo's has been updated!               " | lolcat
echo "¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡" | lolcat
echo "------------------------------------------------------------" | lolcat