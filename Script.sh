#!/bin/bash
add() {
	echo "The answer is: $(($1 + $2))"
}
subtract() {
	echo "The answer is: $(($1 - $2))"
}
multiply() {
	echo "The answer is: $(($1 * $2))"
}
divide() {
	echo "The answer is: $(($1 / $2))"
}
echo "Simple Calculator"
echo "Select operation"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"

read -p "Enter selection [1-4]: " OPERATION

read -p "Enter first number" NUM1
read -p "Enter second number" NUM2
case $OPERATION in
	1)
		add $NUM1 $NUM2
		;;
	2)
		subtract $NUM1 $NUM2
		;;
	3)
		multiply $NUM1 $NUM2
		;;
	4)
		divide $NUM1 $NUM2
		;;
	*)
		echo "Invalid choice"
		;;
	esac