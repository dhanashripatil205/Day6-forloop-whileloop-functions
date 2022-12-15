#!/bin/bash -x

#Extend the Flip Coin problem till either Heads or Tails wins 11 times.

tail=0
head=1
headCount=0
tailCount=0
while [ $headCount -lt 11 -a $tailCount -lt 11 ]
do
	random=$((RANDOM%2))
	if [ $random -eq $head ]
	then
		headCount=$((headCount+1))

	else
		tailCount=$((tailCount+1))

	fi
done
if [ $random -eq $head ]
then
	echo "Heads wins $headCount times"
else
	echo "Tails wins $tailCount times"
fi
