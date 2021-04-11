#!/bin/zsh

output=$(echo "$1" | base64 --decode | base64 --decode)
pbcopy $output
open $output
