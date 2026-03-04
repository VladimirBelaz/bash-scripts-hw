#!/bin/bash

while [ "$1" != "" ]
do
  case $1 in
    --file ) shift
             files="$files $1"
             ;;
    --extension ) shift
                  ext=$1
                  ;;
    --replacement ) shift
                    repl=$1
                    ;;
  esac
  shift
done

for f in $files
do
  name=${f%.$ext}
  echo "$(pwd)/$name.$repl"
done
