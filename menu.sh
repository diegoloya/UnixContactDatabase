#!/bin/sh

#Group members:
#Diego Loya
#Collin Weir
#Forrest Cross
#Michael Robertson

#Display menu and execute corresponding command
exit=0

while [ $exit -ne 1 ]	
do
	echo "Welcome to my contact database, please select from the following menu:"
	echo "(a) Find a record"
	echo "(b) Add a new record"
	echo "(c) Update a record"
	echo "(d) Remove a record"
	echo "(e) Quit"
	read choice

	if [ "$choice" = "a" ]
	then
		./find.sh
	elif [ "$choice" = "b" ]
	then
		./add.sh
	elif [ "$choice" = "c" ]
	then
		./update.sh
	elif [ "$choice" = "d" ] 
	then
		./remove.sh
	elif [ "$choice" = "e" ]
	then 
		exit=1
	else
		echo "Error: Please select from the given options."
	fi
done

exit 0
