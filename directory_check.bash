#!/bin/bash

#read folder name
read -r -p "Enter folder name:" folder

if [ -e $folder ];
then
	echo "Folder is available"
else
	echo "Folder is not available"
fi
