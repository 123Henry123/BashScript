#!/bin/bash
choices=("rock, paper, scissors")

read -p "Type rock, paper, or scissors:" user_choice

user_choice=$(echo "$user_choice" | tr '[:upper:]' '[:lower:]')

computer_choice=${choices[$RANDOM % 3]}

echo "You chose: $user_choice"
echo "computer chose: $computer_choice"

case "$user_choice" in
	rock)
		case "$computer_choice" in
			rock) echo "It's a tie" ;;
			paper) echo "You lose" ;;
			scissors) echo "You win" ;;
		esac
		;;
	paper)
		case "$computer_choice" in
			rock) echo "You win" ;;
			paper) echo "It's a tie" ;;
			scissors) echo "You lose" ;;
		esac
		;;
	scissors)
		case "$computer_choice" in
			rock) echo "You lose" ;;
			paper) echo "You win" ;;
			scissors) echo "It's a tie" ;;
		esac
		;;
	*)
		echo "Invalid input"
		;;
esac
