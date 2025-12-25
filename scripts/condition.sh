#!/bin/bash

echo "enter your branch name:"
read branch
branch=$(echo "$branch" | tr 'a-z' 'A-Z') 

if [ "$branch" = "IT" ] || [ "$branch" = "CS" ]
then 
echo "good for devops"
else
echo "still possible ,keep learning"
fi
