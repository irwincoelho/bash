#!/bin/bash

let result="$1+$2"
echo "$1+$2="$result Length of result = ${#result}

echo "$1+$2="$( expr $1 + $2 )

echo $(( $1 + $2))
