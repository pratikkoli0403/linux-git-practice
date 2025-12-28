#!/bin/bash

echo "enter the file or directory name"
read item

if [ -f "$item" ]; then
echo "it is a regular file"
elif [ -d "$item" ]; then 
echo "it is a directory"
elif [ -e "$item" ]; then
echo "it exists but is not a regular file"
else 
echo "it does not exist"
fi
