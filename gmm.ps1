# gmm.ps1: Git Merge from main - 
# Merges the latest changes from remote master/main to the current local branch
# Note, this script REQUIRES that you have grep, sed, and paste (from UnxUtils), which are included in the repo.

$main = $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
git fetch && echo ======== && git merge origin/$main | Tee-Object \\.\CON | grep "CONFLICT" | sed -r "s/^.*conflict in //" | paste -sd " " - | sed -e "s/^./You may want to run: code.cmd -n \0/"
