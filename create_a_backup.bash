#!/bin/bash

read -r -p "Enter the foler name along with path to take a backup" folder

echo $folder
tar -cvf ./backup.tar  $folder

if [ $? -eq 0 ];
then
	echo
	echo "tar file created as backup.tar in `pwd`"
	echo
else
	echo
	echo "please check for error and re-run the script"
	echo
fi
