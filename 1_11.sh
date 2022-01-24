#!/bin/sh
NFILES=$(find -type f | wc -l)

I=0
while [ $I -lt $NFILES ]; do
	echo -n '@'
	I=$((I + 1))
done

echo

