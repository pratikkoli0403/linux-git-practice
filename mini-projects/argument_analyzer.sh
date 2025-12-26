#!/bin/bash

if [ $# -eq 0 ];
then
echo "atleast give one argument"
exit 1
fi
count=0
for arg in "$@"
do
((count++))
length=${#arg}
if [ $length -ge 5 ];
then
status="valid"
else
status="invalid"
fi
echo "$arg length $length $status"
done
echo "Total argument:$count"
