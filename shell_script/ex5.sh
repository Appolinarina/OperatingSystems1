#!/bin/bash
while true;
do

	echo "Bash Commands"
	echo "1: Show disk usage"
	echo "2: Show screen uptime"
	echo "3: Show logged in users"
	echo "q: quit"
	
	read input 

	case $input in
		1) echo "Current disk usage:"; df -H; echo;;
		2) echo "Current screen uptime:"; uptime; echo;;
		3) echo "Logged in users:"; who; echo;;
		q) echo "Goodbye!"; exit 1;;
		*) echo "Invalid input, try again"; echo;;

	esac
done


