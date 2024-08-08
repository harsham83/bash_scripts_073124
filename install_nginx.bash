#!/bin/bash

echo Let\'s install nginx webserver in amaxon linux

sudo yum install nginx

read -r -p "do you want to edit confix file for port change (Y/N): " response

if [ $response == Y ];then
	sudo vi /etc/nginx/nginx.conf
else
	echo "you can find config file in  /etc/nginx/nginx.conf for your further reference"
fi

read -r -p "do you want to start nginx (Y/N): " response

if [ $response == Y ];then
        sudo /etc/init.d/nginx start
fi
