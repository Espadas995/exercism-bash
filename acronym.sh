#!/usr/bin/env bash

arg=$1
IFS="- _*" read -r -a arg_array <<< "$arg"
arg_array_length=${#arg_array[@]}
acron=""

for((i=0;i<arg_array_length;i++)); do
    letter="${arg_array[i]:0:1}"
    mayus_letter=${letter^}
    acron+=$mayus_letter
done

echo "$acron"