#!/bin/bash -x

ispartime=1
isfulltime=2
emplyrateperhr=30
numofworkingdays=20

totalsalary=0

for (( day=1; day<=$numofworkingdays; day++ ))
do
	randomchech=$((RANDOM%3))
	case $randomcheck in

		$isfulltime )
			emplyhr=8
		;;
		$isparttime )
			emplyhr=4
		;;
		*)
			emplyhr=0
		;;
	esac

	salary=$(($emplyhr*$emplyrateperhr)) #dailywage
	totalsalary=$(($totalsalary+$salary)) #totalsalary
done
