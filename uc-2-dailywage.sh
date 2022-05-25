#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))

if (( $ispresent == $randomcheck ))
then
	emplyrateperhr=100
	emplyhr=8
	salary=$(($emplyrateperhr*$emplyhr))
else
	salary=0
fi
