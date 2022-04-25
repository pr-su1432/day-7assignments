#!/bin/bash -x


for((index=0;index<10;index++))
do
        array[index]=$(( (RANDOM%99)+1 ))
done
echo "The  random numbers are: " ${array[@]}

num=0
for((i=0;i<${#array[@]};i++))
do
        for((j=$(($i+1));j<${#array[@]};j++))
        do
                if [ ${array[i]} -gt ${array[j]} ]
                then
                        num=${array[i]}
                        array[i]=${array[j]}
                        array[j]=$num
                fi
        done
done

echo "The  random numbers after sorting in ascending order are: " ${array[@]}
p=$((${#array[@]}-2))
echo " 2nd largest number is: " ${array[$p]}
echo " 2nd smallest number is: " ${array[1]}
