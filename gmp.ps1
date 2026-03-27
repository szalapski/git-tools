#gmp.bat: Git main & pull - 
#Switches to the master/main branch with the latest files 

$main = $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
git switch -q $main
if($?){ git pull }
git branch --show-current