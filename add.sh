#!/bin/sh

file="file.txt"

#Choice B
echo "Enter name: "
read name
echo "Enter address: "
read address
echo "Enter phone#: "
read phone
echo "Enter email: "
read email

echo "$name:$address:$phone:$email"> $file
