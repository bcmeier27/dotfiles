# dotfiles
Just a little repo of some of the things I find useful.

## Aliases

### Path handling
* `paths` - Outputs a list of all the current collection of paths on separate lines in the order they appear in the PATH environment variable
* `pathsi` - Same but with an index number in front of each path
* `pathrm {regexp | :index[,index...]}` - Returns a new list from PATH with any path matching regexp or at position index removed; output can be back-quoted or piped into another command:
* `pathadd path [index]` - Returns a new list from PATH with given path string added; if index is given the path appears before that position based on `pathsi` output

#### Examples
```bash
$ pathsi
         1 : /usr/local/bin
         2 : /usr/bin
         3 : /cygdrive/c/Go/bin
         4 : /cygdrive/c/Tcl/bin
         5 : ~/.local/bin/
         6 : ~/.local/bin/

$ pathrm
use pathrm <string>|<indexes> to remove matching item from $PATH -- (for indexes use :<n>[,<n>...] where <n> is per pathsi output)

$ pathrm :3,4,5
/usr/local/bin:/usr/bin:~/.local/bin/

$ export PATH=`pathrm :3,4,5`

$ pathsi
         1 : /usr/local/bin
         2 : /usr/bin
         3 : ~/.local/bin/

```

### File listing, etc.
* `ls` - enforces `/bin/ls` with color formatting
* `ll` - extended listing using ls alias

## .rc stuff
* .bashrc
..** sets the DISPLAY value to current IP address :0 using output from ping (may not work on all platforms)
..** looks for Git and Python

---
Work in progress.
