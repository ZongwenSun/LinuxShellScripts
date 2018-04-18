#!/bin/bash
# read password 

PASS=helloworld
MAX_TRY=5

tryCount=0
while [ $tryCount -lt $MAX_TRY  ];
do
read -s -p "Enter Password:" input
if [ $input = $PASS ]; then
	echo -e "\nWelcome!"
	break
else
	echo -e "\npassword wrong! try again"
	let tryCount++
fi
if [ $tryCount -ge $MAX_TRY ]; then
	echo -e "\nReach Max Try Times!"
fi
done

