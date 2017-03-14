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
    echo "\033[1;31m*************** Now updating ${repo} ***************\033[0m"
    cd "${repo}" && git checkout master && git up)
done

echo "\033[1;31m------------------------------------------------------------\033[0m"
echo "\033[1;31m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\033[0m"
echo "\033[1;31m             All git repo's has been updated!               \033[0m"
echo "\033[1;31m¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡\033[0m"
echo "\033[1;31m------------------------------------------------------------\033[0m"