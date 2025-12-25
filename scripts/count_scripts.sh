#!/bin/bash

for i in *.sh
do
echo "$i"
count=$((count+1))
done
echo "total scripts: $count"
