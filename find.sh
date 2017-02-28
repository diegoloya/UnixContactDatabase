#!/bin/sh

file="file.txt"

echo "What are you looking for?"
read search


echo "The following entries were found: "
grep -i $search $file

echo ""
echo ""


