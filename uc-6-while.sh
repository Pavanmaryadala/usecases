#!/bin/bash -x

isparttime=1
isfulltime=2
maxrateinmonth=100
emplyrateperhr=20
numofworkingdays=20

totalemplyhr=0
totalworkingdays=0

while [[ $totalemplyhr -lt $maxrateinmonth &&
	$totalworkingdays -lt $numofworkingdays ]]
do
	((totalworkingdays++))
	randomcheck=$((RANDOM%3))
	case $randomcheck in
			$isparttime )
				emplyhr=4
			;;
			$isfulltime )
				emplyhr=8
			;;
			* )
				emplyhr=0
			;;
	esac

	totalemplyhr=$(($totalemplyhr+$emplyhr))
done
totalsalary=$(($totalemplyhr*$emplyrateperhr))


