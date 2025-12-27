#!/bin/bash

analyze_arg(){
arg=$1
length=${#arg}

if [ $length -ge 5 ]; then
echo "arg: $arg | length: $length | valid"
return 0
else
echo "arg: $arg | length: $length | invalid"
return 1
fi
}

main(){
#Error 1: no arguents
if [ $# -eq 0 ]; then
echo "Give at least one argument"
exit 1
fi
invalid_found=0

for arg in "$@"
do
analyze_arg "$arg" || invalid_found=1
done
echo "Total argument:$#"
#Error 2: invalif argument detected
if [ $invalid_found -eq 1 ]; then
exit 2
else 
exit 0
fi
}

main "$@"
