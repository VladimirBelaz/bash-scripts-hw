#!/bin/bash

n=$1
mid=$((n/2))

echo "mult: $(seq 1 $mid | paste -sd "*" | bc)"

if [ $((n%2)) -eq 0 ]
then
  start=$((mid+1))
else
  start=$((mid+2))
fi

echo "sum: $(seq $start $n | paste -sd "+" | bc)"
