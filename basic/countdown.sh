#!/bin/bash
# countdown for user input seconds
# usage:
# countdown.sh seconds


count=$1

echo -n Count:
tput sc

while true
do
tput rc
tput ed

if [ $count -gt 0 ]; then
	echo -n $count
	let count--
	sleep 1
else
	echo 0
	exit 0
fi
done 
