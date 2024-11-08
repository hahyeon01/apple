#!/bin/sh
dir_name=$1
if [ ! -d "$dir_name" ]; then
	mkdir "$dir_name"
fi
cd "$dir_name" || exit
for i in 0 1 2 3 4; do
	touch "file$i.txt"
done
echo "file0.txt file1.txt file2.txt file3.txt file4.txt files.tar"
tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt
mkdir "${dir_name}"
mv files.tar "${dir_name}/"
cd "${dir_name}" || exit
tar -xvf files.tar
