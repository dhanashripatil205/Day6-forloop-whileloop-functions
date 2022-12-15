#!/bin/bash -x

#Write a Program where a gambler starts with Rs 100 and places Re 1 bet
#until he/she goes broke i.e. no more money to gamble or reaches the
#goal of Rs 200. Keeps track of number of times won and number of bets
#made.

rupees=100
win=1
lose=0
bet=1
betCount=0
winCount=0
while [ $rupees -gt 0 -a $rupees -lt 200 ]
do
	random=$((RANDOM%2))
	((betCount++))

	if [ $random -eq $win ]
	then
		rupees=$((rupees+$bet))
		winCount=$((winCount+1))

	else
		rupees=$((rupees-$bet))
	fi
done
echo "Number of times bet occured: $betCount"
echo "Number of times won: $winCount"
