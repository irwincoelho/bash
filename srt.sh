#!/bin/bash
# Project to identify an srt file matching a movie file
# and change the name so it matches, except for the extension
# Given: All movie files and srt files will be in the same directory
# Both movie and srt files will have the same name, though need not be
# same case or in the same format eg. The Charge.mp4 The.Charge.srt
# The files will have a season and episode number

# 1. How to identify movie files
# For now any files with extension mp4, avi, mkv, wmv

i=0
cd ~/Downloads
while read line
do
  array[ $i ]=$line
  (( i++ ))
done < <(ls)

echo ${array[1]}
