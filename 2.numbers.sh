#!/bin/bash

n=$1
m=$((n/2))

echo "mult: $(seq 1 $m | paste -sd "*" | bc)"
echo "sum: $(seq $((m+1)) $n | paste -sd "+" | bc)"
