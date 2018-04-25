#!/bin/bash

echo ""
echo "Setting useful things ..."
DISPLAY=`ping -4 -n 1 $COMPUTERNAME | awk '/from/{print $3 "0.0"}'`
export DISPLAY
echo "DISPLAY=$DISPLAY ("`ps | grep Xwin | awk 'END{if ($0!="") { print "Xwin is running: PID="$1 ", WINPID="$4;} else {print "Please start Xwin";}}'`")"
echo ""

echo -n "Loading aliases from .alias ... "
. ~/.alias
echo " Done. (use alias command to list)"
echo ""

echo -n "Setting PATH ... "
export PATH="${PATH}:~/.local/bin/"
#echo "CYGWIN: `pwd | grep -c cyg | awk '{print(($0 == 0)?"not enabled":"enabled")}'`"
if [ -z "$(pwd | grep -c cyg)" ]; then
  export PATH="${PATH}:/c/CYGWIN/bin/"
  echo "CYGWIN added"
else
  echo "Done."
fi

echo -n "Git: "
_whichGit=$(which git 2> /dev/null)
if [ $? -eq 0 ]; then 
  echo "($(git --version)) $_whichGit)"
else
  echo "not present."
fi

#
# Print the location of Python - since the 'which' command returns an error on STDOUT (FD 2), redirect 2> to /dev/null
# For the 'awk' script, since on error, the 'which' command returns nothing now, we have to execute the program as the last step
#
echo "Python: `which python 2> /dev/null | awk 'END{print($0 != "" ? $0 : "not present")}'`"
echo ""
