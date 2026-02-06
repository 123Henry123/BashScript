#!/bin/bash
echo "Welcome to the number guessing game!"
echo "What will your minimum value be?"
read min
echo "What will your maximum value be?"
read max

while [[ $min -gt $max ]]; do
	echo "Your minimum cannot be greater than your maximun number."
	echo "Please chose another minimum value"
	read min
	echo "Please chose another maximum value?"
	read max
done

number=$(( min + RANDOM % (max - min + 1) ))
	echo "guess a number from $min to $max"
	read guess
while [[ $guess -ne $number ]]; do
	if [[ $guess -gt $max ]]; then
		echo "invalid response make sure your number is between $min and $max"
		read guess
	elif [[ $guess -lt $min ]]; then
		echo "invalid response make sure your number is between $min and $max"
		read guess
	fi
done

while [[ $guess -ne $number ]]; do
	if [[ $guess -lt $number ]]; then
		echo "too low, guess again"
		read guess
		continue
	elif [[ $guess -gt $number ]]; then
		echo "too high, guess again"
		read guess 
		continue
	fi
done
echo "good job $number is correct!"
