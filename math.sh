#!/bin/bash
echo "welcome to math guide"
echo "lets learn about basic math"
echo "select an operation you would like to learn about 1-4:"
echo "1. addition/subtraction"
echo "2. multiplication/division"
echo "3. variables"
echo "4. trig"

read math_choice
user_choice=""

if [ "$math_choice" -eq 1 ]; then
	user_choice="addition/subtraction"
	echo "you must be stupid if you don't know this"
elif [ "$math_choice" -eq 2 ]; then
	user_choice="multiplication/division"
	echo "you must be stupid if you don't know this"
elif [ "$math_choice" -eq 3 ]; then
	user_choice="variables"
	echo "this is simple math"
elif [ "$math_choice" -eq 4 ]; then
	user_choice="trig"
	echo "good choice"
else 
	echo "invalid choice"
	exit 1
fi

case "$math_choice" in
	1) 
		echo "addition is shown with + symbol"
		sleep 2
		wait
		echo "you find the sum if numbers"
		sleep 2
		wait
		echo "subtraction is shown with - symbol"
		sleep 2
		wait
		echo "subtraction is when you find the difference between numbers"
		sleep 3
		wait
		;;
	2) 
		echo "multipication is represented by x or *"
		sleep 2
		wait
		echo "you find the product of numbers"
		sleep 2
		wait
		echo "division is represented by / or the default division symbol"
		sleep 2
		wait
		echo "you find the quotient of numbers"
		sleep 3
		wait
		;;
	3) 
		echo "to find a variable you need to isolate the variable"
		sleep 2
		wait
		echo "by applying addition, subtraction, multiplication, division"
		sleep 2
		wait
		echo "you can find the value of a variable"
		sleep 3
		wait
		;;
	4)
		echo "Trig is short for trignometry"
		sleep 2
		wait
		echo "trig has 3 primary ratios"
		sleep 1
		wait
		echo "sin, cos, tan"
		sleep 1
		wait
		echo "these functions can be used to find the angles of triangles"
		sleep 2
		wait
		echo "sin is opposite divided by hypoteneuse"
		echo "cos is adjacent divided by hypoteneuse"
		echo "tan is opposite divided by adjacent"
		sleep 3
		wait
		;;
esac
echo "lets practice your math"
read -p "what is 5+5: " answer
if [ $answer -eq 10 ]; then
	echo "correct"
else 
	echo "wrong"
fi
read -p "what is 84-54: " answer_2
if [ $answer_2 -eq 30 ]; then
	echo "correct"
else 
	echo "wrong"
fi
read -p "what is 18x23" answer_3
if [ $answer_3 -eq 414 ]; then
	echo "correct"
else
	echo "wrong"
fi
read -p " if tanθ = 1 what is θ" answer_4
if [ $answer_4 -eq 45 ]; then
	echo "correct"
else 
	echo "wrong"