#!/bin/bash

status_check=$(sudo systemctl status nginx | grep running)

if [ -z "$status_check" ]; then

	`sudo systemctl start nginx`
        echo "nginx is started running now"

else
	echo "nginx is already running now"
fi
