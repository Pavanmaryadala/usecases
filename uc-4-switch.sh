#!/bin/bash -x

isparttime=1
isfulltime=2
emplyrateperhr=20
randomcheck=$((RANDOM%3))

case $randomcheck in
			$isfulltime  )
				emplyhr=8
			;;
			$isparttime  )
				emplyhr=4
			;;
			*)
				emplyhr=0
			;;
esac
salary=$(($emplyhr*$emplyrateperhr))
