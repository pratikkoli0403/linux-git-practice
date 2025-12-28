#!/bin/bash

echo "Enter a filename :"
read file

[ -f "$file" ] && echo "File exists" || echo "Files does not exists"
