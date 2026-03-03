#!/bin/bash

for f in "$@"
do
  name=${f%.*}
  echo "$(pwd)/$name.$6"
done
