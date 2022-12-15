#!/bin/bash -x


#Write a program to compute Factors of a number N using prime factorization method.

#Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
#O/P -> Print the prime factors of number N.



echo "Program to find prime factor of a number."
read -p "Enter a number : " N
fact=1
echo -n "Prime factors of $N are: "
for (( i=2; i*i<=N; i++ ))
do
	rem=$((N%i))
	for (( ; $rem==0; ))
	do
		N=$((N/i))
		rem=$((N%i))
		echo -n "$i "
	done
done
if [ $N -ne 1 ]
then
	echo -n "$N "
fi
