#!bin/sh
if [ $# -eq 1 ]; then
	count=$1
	i=1
	while [ $i -le $count ]; do
		echo "hello world"
		i=$((i+1))
	done
else
	while true; do
		echo "hello world"
	done
fi
