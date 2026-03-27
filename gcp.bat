@rem gcp.bat: G Add, Commit and Push (without tests)
@rem USAGE:   gcp [just type your commit message without any quotation marks anywhere]
@rem EXAMPLE: gcp code cleanup for abc feature

@rem remove outer quotation marks if any
@set message=%*
@set message=%message:"=%

git add -A && git commit -m "%message%"
@if errorlevel 1 goto end
git push
@if errorlevel 0 echo [42m Git push done at %TIME% [0m
:end