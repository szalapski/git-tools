## Patrick Szalapski's handy Git batch files

To get these scripts working well, I suggest you clone it to c:\gittools, then add that folder to your PATH by running just
```cmd
setx /M PATH "%PATH%;C:\gittools"
```

Each batch file has comments in it to give you a clue how to use it.

The most useful one is gcp.bat--I use it many times per day.  Here's a brief description of each, in the order of most useful first.

- `gcp`      Git add all, Commit, and Push 
- `gm`       Git switch to Main and pull
- `gmm`      Git Merge from Main
- `gmp`      Git switch to Main and pull
- `gb`       Git create new Branch (from any branch)
- `gr`       Git Reset current branch to match origin, undoing all local edits
- `gs`       Git fetch and switch to a branch
- `gac`      Git Add and Commit (without push)
- `gcleanup` Git deletes the local branches that have already been merged

Note that gmm.bat requires a few [UnxUtils](https://sourceforge.net/projects/unxutils/files/unxutils/current/UnxUtilsSrc.zip/download) to be in your PATH to work.  The rest should work with nothing but standard Windows commands.
