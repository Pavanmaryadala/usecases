#!/bin/bash -x

isparttime=1
isfulltime=2
emplyrateperhr=20
randomcheck=$((RANDOM%3))

if [ $isparttime -eq $randomcheck ]
then
	emplyhr=4
elif [ $isfulltime -eq $randomcheck ]
then
	emplyhr=8
else
	emplyhr=0
fi

salary=$(($emplyhr*$emplyrateperhr))
