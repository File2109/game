
README.md: guessinggame.sh
	echo "#Guessing game in BASH!" >> README.md;
	echo "Time when last make command is executed: "$$(date "+%H:%M:%S") >> README.md ; 
	echo "The number of lines in guessinggame.sh file is: "$$(cat guessinggame.sh | wc -l) >> README.md
