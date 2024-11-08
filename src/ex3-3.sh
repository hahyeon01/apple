#!/bin/sh
if [ $# -ne 2 ]; then
	echo "Usage: sh $0 <체중(kg)> <신장(cm)>"
	exit 1
fi
weight=$1
height_cm=$2
height_m=$(echo "scale=2; $height_cm / 100" | bc)
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

if [ $(echo "$bmi < 18.5" | bc) -eq 1 ]; then
	echo "저체중입니다."
elif [ $(echo "$bmi < 23" | bc) -eq 1 ]; then
	echo "정상 체중입니다."
else
	echo "과체중입니다."
fi
