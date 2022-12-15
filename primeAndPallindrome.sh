#!/bin/bash -x

#Take a number from user and check if the number is a Prime then show

#that its palindrome is also prime
#a. Write function check if number is Prime
#b. Write function to get the Palindrome.
#c. Check if the Palindrome number is also prime


read -p "Enter number : " num
primeCall=0
function prime() {
	count=0
	n=$1
	for (( i=2; i<=n/2; i++ ))
	do
		mod=`awk 'BEGIN{printf('$n'%'$i')}'`
		if [ $mod -eq 0 ]
		then
			count=$((count+1))
		fi
	done
	if [ $count -gt 1 ]
	then
		echo "$n is not prime number"
	else
		primeCall=$((primeCall+1))
		#echo "primeCall: $primeCall"
		if [ $primeCall -eq 2 ]
		then
			echo "$n is also pallindrome"
		fi
	fi
}
function pallindrome() {
	rev=0
	temp=$1
	while [ $temp -ne 0 ]
	do
		rem=$((temp%10))
		rev=$(((rev*10)+rem))
		temp=$((temp/10))
	done
	echo $rev
}
prime $num
if [ $primeCall -eq 1 ]
then
	echo "$num is prime"
	pal=$( pallindrome $num )
	echo "$pal is pallindrome of $num"
	if [ $num -eq $pal ]
	then
		echo "$pal is also pallindrome"
	else
		prime $pal
	fi
fi
