#!/bin/bash

while [ "$1" != "" ]
do
  case $1 in
    --file ) shift
             file=$1
             ;;
    --search ) shift
               text=$1
               ;;
  esac
  shift
done

count=$(grep -o "$text" "$file" | wc -l)

if [ $count -eq 0 ]
then
  echo "Не найдено ни одного совпадения в файле $(realpath $file)"
else
  echo $count
fi
