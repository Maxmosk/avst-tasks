#!/bin/sh
if [ "$#" != "2" ]; then
	echo "Invalid params"
fi

N=$1
M=$2

RES=""

I=0
while [ $I -lt $M ]; do
	RES="$RES $(($N + $I))"
	I=$((I + 1))
done

echo "$RES"

