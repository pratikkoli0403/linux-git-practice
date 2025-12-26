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
for arg in "$@"
do
analyze_arg "$arg"
done
echo "Total argument:$#"
}
main "$@"
