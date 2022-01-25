#!/bin/sh
if [ "$#" != "1" ]; then
	echo "Invalid params"
	exit
fi

STATUS=$(mkdir "$1")
if [ "$STATUS" != "0" ]; then
	echo "Failed to make directory"
	exit
fi

