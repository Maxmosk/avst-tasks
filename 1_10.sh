#!/bin/sh
if [ "$#" != "2" ]; then
	echo "Invalid params"
	exit
fi


N=$1
M=$2

I=0
while [ $I -lt $M ]; do
	echo -n "$(($N + $I)) "
	I=$((I + 1))
done

echo

