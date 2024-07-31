#!/bin/bash

read -r -p "enter the folder name you want to create: " folder

if [ -e $folder ];then
	echo "$folder is availble"
else
	mkdir $folder
	if (( $? == 0 ));
	then
		echo "folder created succesfully"
	else
		echo "please retry with proper commands"
	fi
fi

