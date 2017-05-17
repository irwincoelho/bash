#!/bin/bash
# demonstrate scope

# verify current value
echo $0 :: var1 : $var1, var2: $var2

var1=flop
var2=bleh

echo $0 :: var1 : $var1, var2 : $var2
