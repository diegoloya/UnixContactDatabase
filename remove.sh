#!/bin/sh
#This works for most cases
#Sucessfully removes single entries
#First we ask the user which entry they want to delete
echo "Search for an entry to delete: "
read deleteName

grep "$deleteName" file.txt

echo "Is this the entry you want to delete? Y or N"
read choice

if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; 
then	
	grep -v "$deleteName" file.txt > tempfile.txt
	mv tempfile.txt file.txt
	echo "Entry removed!"

else
	echo "File not removed!"
	exit 0

fi



