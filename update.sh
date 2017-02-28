#!/bin/sh
/bin/bash ./listcat.sh
filename="file.txt"

read -p "Enter the name of the entry you would like to modify: " updatename
echo $updatename

#error control to minimize multiple names
matchnum=$(grep -ic "$updatename" ./$filename) 
if [[ $matchnum == 0 ]]
then 
	echo "No entries found"
	exit 
elif [[ $matchnum > 1 ]]
then
	echo "$(grep -i "$updatename" ./$filename)"
	read -p "Repeated Entries found, Enter Email: " fmatch;
	#echo "$(grep -i "$fmatch" ./$filename)"
	updateline=$(grep -i "$fmatch" ./$filename)

else
	#echo "$(grep -i "$updatename" ./$filename)"
	updateline=$(grep -i "$updatename" ./$filename)
fi

#find and replace line
echo "Replacing Entry..."
read -p "Enter new Name: " Nname;
read -p "Enter new Address: " Naddress;
read -p "Enter new Phone #: " Nnumber;
read -p "Enter new Email: " Nemail;

while IFS= read -r line; do
	if [[ $line == $updateline ]]; then
		echo "$Nname:$Naddress:$Nnumber:$Nemail"		
	else
		echo "$line"
	fi

done < "$filename" > ./file.txt.t;
mv ./file.txt{.t,}
cat ./file.txt


echo "update complete"
