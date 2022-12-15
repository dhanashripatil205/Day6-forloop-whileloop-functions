#!/bin/bash -x

#Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n.


read -p "Enter number which will be the power to the 2 : " num
for (( i=0; i<=num; i++ ))
do
	echo $((2**i))
done
