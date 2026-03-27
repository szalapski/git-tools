# gmm.ps1: Git Merge from main - 
# Merges the latest changes from remote master/main to the current local branch
# Note, this script REQUIRES that you have tee, grep, sed, and paste in your PATH.
# Get then from UnxUtils (they are in the wbin folder)

$main = $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
git fetch && echo ======== && git merge origin/$main | Tee-Object \\.\CON | grep "CONFLICT" | sed -r "s/^.*conflict in //" | paste -sd " " - | sed -e "s/^./You may want to run: code.cmd -n \0/"