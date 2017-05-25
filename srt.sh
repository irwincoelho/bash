#!/bin/bash
# Project to identify an srt file matching a movie file
# and change the name so it matches, except for the extension
# Given: All movie files and srt files will be in the same directory
# Both movie and srt files will have the same name, though need not be
# same case or in the same format eg. The Charge.mp4 The.Charge.srt
# The files will have a season and episode number

# 1. How to identify movie files
# For now any files with extension mp4, avi, mkv, wmv

# Test if there $1 holds the dir. If no, act on current dir
if [ $# -ne 0 ]
then
	cd $1
fi

# Create 2 arrays with the video and srt files
i=0
j=0

while read line
do
  fn=$(basename "$line")
  ext="${fn##*.}"
  if [ $ext = "srt" ]
  then
	srt[ $i ]=$line
	(( i++ ))
  elif [[ $ext =~ [(mp4|avi|mkv)] ]]
  then
	vid[ $j ]=$line
	(( j++ ))
  fi
done < <(ls)

# The loop below prints out the contents of the vid and srt arrays
# Not really needed. Keeping it for testing purposes
#for ((x=0;x<${#vid[@]};x++));
#do
#	echo ${vid[$x]}
#	echo ${srt[$x]}
#done

# The only matches between the vid and srt files are their
# names, season and episode number
# Write a regular expression to identify the matching srt
# Then copy the filename of the vid without the extension to the srt

for ((i=0;i<${#vid[@]};i++));
do
	vidTest=${vid[$i]}
	[[ "${vid[$i]}" =~ .*S?([0-9]{2,})[xE]([0-9]+).* ]]
	vidSeason=${BASH_REMATCH[1]}
	vidEpisode=${BASH_REMATCH[2]}
	for ((j=0;j<${#vid[@]};j++));
	do
		[[ "${srt[$j]}" =~ .*S?([0-9]{2,})[xE]([0-9]+).* ]]
		srtSeason=${BASH_REMATCH[1]}
		srtEpisode=${BASH_REMATCH[2]}
		if [ $vidEpisode=$srtEpisode ]
		then
			echo matches
		fi
	done
		
done
