#!/bin/bash
read -p "Enter your 1st number: " a
read -p "Enter your 2nd number: " b
read -p "Enter your 3rd number: " c

operation1=$(( a + b * c ))
operation2=$(( a * b + c ))
operation3=$(( c + a / b ))
operation4=$(( a % b + c ))

declare -A arithmaticoperation
arithmaticoperation[operation1]=$operation1
arithmaticoperation[operation2]=$operation2
arithmaticoperation[operation3]=$operation3
arithmaticoperation[operation4]=$operation4

declare -a arr
for((i=0; i<=${#arithmaticoperation[@]}; i++))
do

        arr[i]=${arithmaticoperation[operation$((i+1))]}
done
echo ${arr[@]}
