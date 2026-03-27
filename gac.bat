@rem gac.bat: Git Add and Commit
@rem USAGE:   gac [just type your commit message without any quotation marks or punctuation]
@rem EXAMPLE: gac code cleanup for abc feature for BI1234
git add -A && git commit -m "%*"
@if errorlevel 1 goto end
@rem (does not push)
@if errorlevel 0 echo [42m Git push done at %TIME% [0m
:end