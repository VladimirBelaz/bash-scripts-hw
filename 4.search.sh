#!/bin/bash

count=$(grep -o "$4" "$2" | wc -l)

if [ $count -eq 0 ]
then
  echo "Не найдено ни одного совпадения в файле $(realpath $2)"
else
  echo $count
fi
