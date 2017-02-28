#!/bin/sh
#Mike Robertson
#Spring 2017

echo "Search for an entry to delete: "
read deleteName

matchnum=$(grep -ic "$deleteName" file.txt) 
if [[ $matchnum == 0 ]]
then 
	echo "No entries found"
	exit 
elif [[ $matchnum > 1 ]]
then
	echo "$(grep -i "$deleteName" file.txt)"
	read -p "Repeated Entries found, Enter Email: " fmatch;
	grep -v "$fmatch" file.txt > tempfile.txt
	mv tempfile.txt file.txt
	echo "Entry removed!"
	
else
	grep -i "$deleteName" file.txt
	echo "Is this the entry you want to delete? Y or N"
    read choice
		
	if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; 
    then
		grep -vi "$deleteName" file.txt > tempfile.txt
		mv tempfile.txt file.txt
		echo "Entry removed!"
		
	else
		echo "File not removed!"
		
	fi


fi



