#!/bin/zsh

output=$(echo "$1" | base64 --decode)
echo $output
echo $output | pbcopy
open $output
