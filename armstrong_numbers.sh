#!/usr/bin/env bash

wanted=$1
digits=${#wanted}
checked=0

for((i=0;i<${digits};i++)); do
    digit="${wanted:i:1}"
    checked=$((checked + (digit ** digits)))
done

if ((checked == wanted)); then
    echo "true"
else
    echo "false"
fi