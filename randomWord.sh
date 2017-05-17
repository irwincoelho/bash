#!/bin/bash

# An attmept to print random word from /usr/share/dict/words
wordFile=/usr/share/dict/words

# num is the number of words in the wordFile
num=$( cat $wordFile | wc -w )

# Choose a random number between 1 and num
ln=$RANDOM
echo $ln
cat $wordFile | head -$ln  | tail -1

# Using a number as the first argument 
# eg. ./randomWord.sh 5
cat $wordFile | head -$1 | tail -1

