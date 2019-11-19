#!/usr/bin/env bash
# Unix Workbench Project Script - Guessing Game Script

current_dir=`pwd`
num_files=`ls $current_dir | wc -l | xargs`

function play_guess {
	echo "Please guess the number of files in the current working directory"
	read guess
	
	if [[ $guess -lt $num_files  ]]
	then
		echo "Sorry....your guess is too low. Please guess again"
		play_guess	
	elif [[ $guess -gt $num_files ]]
	then
		echo "Sorry....your guess is too high. Please guess again"
		play_guess
	else #[[ $guess -eq $num_files ]]
        	echo "Congratulations! You guessed right."
	fi
}

play_guess
