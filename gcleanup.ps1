# updates the local repo list of remote branches then deletes the "gone" ones that have already been merged

$deleteSwitch="-d"

if ($args[0] -eq "--force" ){
  $deleteSwitch="-D"
}
$main = $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
git checkout $main; git remote update origin --prune; git branch -vv | Select-String -Pattern ": gone]" | % { $_.toString().Trim().Split(" ")[0]} | % {git branch $deleteSwitch $_}