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


PATH_START="$1/file"


I=1
for FILE in $(find ./ -type f); do
	ln -T "$FILE" "$PATH_START$I"
	I=$((I + 1))
done

