@rem gb.bat - G Branch 
@rem Creates a banch from the current state and pushes it to origin

git switch -c %1 && git push --set-upstream origin %1