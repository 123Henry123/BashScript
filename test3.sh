#!/bin/bash
day=$(date +%A)
case $day in
	Monday)
		echo "It's Monday its time to start the week";;
	Tuesday)
		echo "It's Tuesday second day of the week";;
	Wednesday)
		echo "It's Wednesday halfway through the weekdays";;
	Thursday)
		echo "It's Thursday second last weekday";;
	Friday)
		echo "It's Friday last week day lets go!";;
	Saturday|Sunday)
		echo "its the weekends :)";;
	*)
		echo "Are you even from earth?";;
esac