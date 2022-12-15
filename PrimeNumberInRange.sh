#!/bin/bash -x

echo "Program to check whether number is prime or not in certain range."
echo "Enter a range"
read -p "Enter a starting number : " start
read -p "Enter a ending number : " end
for (( i=start; i<=end; i++ ))
do
	count=0
	for (( j=2; j<=i/2; j++ ))
	do
		mod=`awk 'BEGIN{printf('$i'%'$j')}'`
		if [ $mod -eq 0 ]
		then
			count=$((count+1))
		fi
	done
	if [ $count -lt 1 ]
	then
		echo "$i is prime number"
	fi
done
