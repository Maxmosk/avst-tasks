#!/bin/sh
TIME_START=$(date +%s)

$*

TIME=$(($(date +%s) - $TIME_START))
CODE=$?

echo "$TIME"


exit $CODE

