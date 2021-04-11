#!/bin/zsh

# set the command as a variable so it can be used later; in this case, the base64 decode.
output=$(echo "$1" | base64 --decode)
# do the command so it can be copied to the clipboard, and then displayed
echo $output | pbcopy
echo $output
# before opening the webpage in the default browser, check to make sure
# otherwise, it will just exit with it copied to the clipboard
read "brave?Here be dragons. Continue?"
if [[ "$brave" =~ ^[Yy]$ ]]
then
    open $output
fi
