#!/bin/bash -x

read -p "Enter number:" num

if [ $num -le 50 ]
then
	for (( i=2; i<=$num; i++ ))
	do
		c=$(($num%$i))

		if [ $c -eq 0 ]
		then
			prime=$i
			a[$i]=$prime
		fi
	done

	echo ${a[@]}
else
	echo  the number is wrong number
fi
