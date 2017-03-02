#!/bin/sh

file="file.txt"

if [ -f $file ]; then
   
	echo "What are you looking for?"
	read search


	count=$(grep -ic $search $file)

	if [ $count = 0 ]; then
		echo "No entries were found"
	else
		echo "The following entries were found: "
		grep -i $search $file
	fi

	echo ""
	echo ""

else
   echo "The file does not exist"
fi
