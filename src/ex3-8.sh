#!/bin/sh
DB_FILE="DB.txt"

if [ "$#" -lt 1 ]; then
	echo "사용법: $0 이름 전화번호"
	exit 1
fi

name=$1
phone=$2

echo "$name $phone" >> "$DB_FILE"

