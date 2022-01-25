#!/bin/sh
if [ "$#" != "1" ]; then
	echo "Invalid params"
	exit
fi

STATUS=$(mkdir "$1" > /dev/null 2>/dev/null)
if [ "$?" != "0" ]; then
	echo "Failed to make directory"
	exit
fi

