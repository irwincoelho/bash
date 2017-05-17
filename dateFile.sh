#!/bin/bash
# Change the file name with date
# mv filename date+filename
# First argument should be the file name

fn=$1
mv $1 $( date +%d_%m_%y )_$1


