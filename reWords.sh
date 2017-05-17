#!/bin/bash

# Print out a specific number of letter words from a file
# Use argument 1 as the file
# Use argument 2 as the number of words to print out
# For now I will use only 1 argument to get the number of words

file=/usr/share/dict/words
fl=$1
len=$2

# $1 holds the starting letter
# $2 holds the number of letters after the first letter
# eg. ./reWords.sh A 2 will print all 3 letter words starting with A
echo Usage: './reWords.sh <first letter> <number of characters to follow>'
egrep "^$1.{$2}$" $file


