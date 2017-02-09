#!/bin/sh

file="file.txt"

echo "What are you looking for?"
read search


echo "\n\nThe following entries were found: "
grep -i $search $file

echo "\n\n"


