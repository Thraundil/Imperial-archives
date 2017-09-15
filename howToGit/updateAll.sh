#!/usr/bin/env sh
# By Emil S. Bak, 2017 DIKU


# All repositories in need of a standard 'Git Pull' goes here.
for repo in cokepc infoscreen imperial-archives national-platform website bornhack-ctf ap-2017; do
    (
    echo "\033[1;31m*************** Now pulling ${repo} ***************\033[0m"
    cd "${repo}" && git pull)
done

# Forked repositories goes here, remember to run
# git remote add upstream <LINK TO ORIGINAL GIT>
for repo in cokepc infoscreen; do
    (
    echo "\033[1;31m*************** Now pulling upstream ${repo} ***************\033[0m"
    cd "${repo}" && git pull upstream master)
done

# Update fanfare IN TECHNOCOLOR
echo "\033[1;31m------------------------------------------------------------\033[0m"
echo "\033[1;31m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\033[0m"
echo "\033[1;31m             All git repo's has been updated!               \033[0m"
echo "\033[1;31m¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡\033[0m"
echo "\033[1;31m------------------------------------------------------------\033[0m"
