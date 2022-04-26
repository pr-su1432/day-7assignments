#!/bin/bash -x

MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$((RANDOM%999 +1))
 let "count += 1"
done

echo "${number[@]}"
