#!/bin/sh

file="file.txt"

#First we ask the user which entry they want to delete
echo -n "Pick an entry to delete: "
read deleteName

grep -v deleteName file > tempfile.txt

mv tempfile.txt file.txt



