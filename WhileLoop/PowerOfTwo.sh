#!/bin/bash -x

#Write a program that takes a command-line argument n and prints a table of the powers of 2 
#that are less than or equal to 2^n till 256 is reached..

read -p "Enter number which will be the power to the 2 : " num
count=0
while [ $count -le $num ]
do
	power=0
	power=$((2**count))
	if [ $power -le 256 ]
	then
		echo $power
	fi
	((count++))
done
