#!/bin/bash
#Script used to check nginx webserver url status
if curl -s http://ec2-34-224-83-188.compute-1.amazonaws.com/; then
	echo "Nginx is up and running"
	exit 0
else
	echo "Nginx is down"
	exit 1
	echo "The exit status was captured to be 'echo $?'"
	# api call connection to azure function to trigger email notifications
fi
