#!/bin/bash
choices=("rock" "paper" "scissors")
rock=1
paper=2
scissors=3
computer() {
	echo $((RANDOM % 3 + 1))
}
winner() {
	
	if [[ ($choices -eq "3" && $computer -eq "2") || 
			($choices -eq "1" && $computer -eq "3") || 
			($choices -eq "2" && $computer -eq "1") ]]; then
				echo "You win"
	else 
		echo "You lose"
	fi
}
 if [[ $guess == "$computer" ]]; then
		echo "tie!"
while true; do
	read -p "enter rock(1), paper(2), scissors(3), or type exit to quit" guess
	if [[ $guess == "exit" ]]; then
		echo "thanks for playing"
		break
	fi
	
	
	comp_choice=$(computer)
	echo "Computer chose: $comp_choice"

	winner
done
 fi