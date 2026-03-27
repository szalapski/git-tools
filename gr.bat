@echo This will reset the current branch to be the same as the upstream branch on origin, losing all local commits.  Press Ctrl+C to abort, or
@pause
git fetch origin && git reset --hard @{upstream} && git clean -f && git pull