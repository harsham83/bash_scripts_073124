#!/bin/bash

read -r -p "Enter the file name that you want to modify: " file_name
read -r -p "Enter number of lines that needs to be deleted from end of the file: " number

#last_lines=$(( tail -"$number" "$file_name" ))
echo "the last $number lines that you want to delete are"
tail -"$number" "$file_name"
head -n -"$number" "$file_name">file2
mv file2 "$file_name"

echo "deleted $number of lines in $file_name"
cat $file_name

