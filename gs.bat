@rem gs.bat: Git fetch and switch
@rem Switches to a branch with the latest files 
@rem USAGE:   gs [branch]
@rem EXAMPLE: gc psz-fix-1

git fetch && git switch %* && git pull