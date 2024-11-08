#!/bin/sh
dir_name=$1
if [ ! -d "$dir_name" ]; then
	mkdir "$dir_name"
fi
cd "$dir_name" || exit
for i in 0 1 2 3 4; do
	touch "file$i.txt"
done

for i in 0 1 2 3 4; do
	folder_name="file$i"
	mkdir "$folder_name"
	ln -s "../file$i.txt" "$folder_name/file$i.txt"
done
