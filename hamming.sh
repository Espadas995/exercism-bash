#!/usr/bin/env bash

str1=$1
str2=$2
str1_len=${#str1}
str2_len=${#str2}
count=0

if [ $# != 2 ]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

if (( str1_len == str2_len )); then
    for((i=0;i<str1_len;i++)); do
        if [[ "${str1:i:1}" != "${str2:i:1}" ]]; then
            ((count++))
        fi
    done
elif (( str1_len != str2_len )); then
    echo "strands must be of equal length"
    exit 1
fi

echo "$count"
