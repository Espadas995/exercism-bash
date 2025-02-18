#!/usr/bin/env bash

arg=$1
arg_length=${#arg}
checked=()

if ((arg_length >= 26)); then
    for ((i=0; i<arg_length; i++)); do
        letter=${arg:i:1}
        letter=${letter,,} 

        if [[ $letter =~ ^[a-z]$ ]]; then
            if [[ ! ${checked[*]}  =~  $letter  ]]; then
                checked+=("$letter")
            fi
        fi
    done
fi

if (( ${#checked[*]} == 26 )); then
    echo "true"
else
    echo "false"
fi
