#!/bin/bash
 
echo "How many files are in the current directory?"
read input

goal="$(ls -la | wc -l)" 

function checking_input(){
	while [[ -n ${input//[0-9]/} ]]
	do
		echo "Your input contains non number! Please enter integer!"
		read input
	done
}

function process_of_guessing (){
	checking_input
	while [[ $((input)) -ne  ${goal} ]]
	do
		checking_input
		if [[ $input -lt ${goal} ]] 
		then
			echo "Try again! Goal number is larger then one you have entered!"
		else [[ $input -gt ${goal} ]]
			echo "Try again! Goal nubmer is smaller then one you have enterd!"
		fi
	read input
	checking_input
	done
echo "GOOD GUESS!"
}

checking_input
process_of_guessing 
