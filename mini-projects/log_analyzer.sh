#!/bin/bash

analyze_log() {
file="$1"

total_lines=0
error_count=0
warning_count=0

while read -r line
do
total_lines=$((total_lines + 1))

[[ "$line" == *"ERROR"* ]] && error_count=$((error_count + 1))
[[ "$line" == *"WARNING"* ]] && warning_count=$((warning_count + 1))
done < "$file"

echo "Log Analysis Report"
echo "___________________"
echo "Total lines   : $total_lines"
echo "ERROR lines   : $error_count"
echo "WARNING lines : $warning_count"

if [ $error_count -gt 0 ]; then
return 2
else
return 0
fi
}

main() {

#no argument
if [ $# -eq 0 ]; then
echo "Usage: $0 <logfile>"
exit 1
fi

logfile="$1"

# file existance check
if [ ! -f "$logfile" ]; then
echo "file not found : $logfile"
exit 1
fi

#Read permission check
if [ ! -r "$logfile" ]; then
echo "file not readable: $logfile"
exit 1 
fi

analyze_log "$logfile"
exit $?
}
main "$@"
