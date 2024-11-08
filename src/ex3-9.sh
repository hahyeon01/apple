#!/bin/bash
DB_FILE="DB.txt"

if [ "$#" -ne 1 ]; then
	echo "사용법: $0 이름"
	exit 1
fi

name="$1"
grep -i "$name" "$DB_FILE"

if [ $? -ne 0 ]; then
	echo "$name을(를) 찾을 수 없습니다."
fi
