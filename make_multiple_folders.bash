#!/bin/bash

read -r -p "Enter number of files you want to create" count

for (( i=1; i<=$count; i++ ))
do
	touch "file$i"
done
