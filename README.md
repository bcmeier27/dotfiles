# dotfiles
Just a little repo of some of the things I find useful.

## Aliases

### Path handling
* `paths` - Outputs a list of all the current collection of paths on separate lines in the order they appear in the PATH environment variable
* `pathsi` - Same but with an index number in front of each path
* `pathrm regexp | index` - Returns a new list from PATH with any path matching regexp or at position index removed; output can be back-quoted or piped into another command:
   `export PATH=``pathrm `` `
* `pathadd path [index]` - Returns a new list from PATH with given path string added; if index is given the path appears before that position based on `pathsi` output

### File listing, etc.
* `ls` - enforces `/bin/ls` with color formatting
* `ll` - extended listing using ls alias

## .rc stuff
* .bashrc
** sets the DISPLAY value to current IP address :0 using output from ping (may not work on all platforms)
** looks for Git and Python

---
Work in progress.
