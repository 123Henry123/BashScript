#!/bin/bash
target=$(( RANDOM % 100 + 1 ))
	echo "guess a number from 1-100"
	read number
while [[ $number -ne $target ]]; do
	if [[ $number -gt 100 || $number -lt 1 ]]; then
		echo "invalid response make sure your number is between 1 and 100"
		read number
		continue
	fi

	if [[ $number -lt $target ]]; then
		echo "too low"
		read number
		continue
	elif [[ $number -gt $target ]]; then
		echo "too high"
		read number 
		continue
	fi
done
echo "good job"