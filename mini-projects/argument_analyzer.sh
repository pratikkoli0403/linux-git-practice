#!/bin/bash

analyze_arg(){
arg=$1
length=${#arg}

if [ $length -ge 5 ]; then
echo "$arg length $length valid"
else
echo "$arg length $length invalid"
fi
}

main(){
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
[ $invalid_found -eq 1 ] && exit 2 ||exit 0
}
main "$@"
