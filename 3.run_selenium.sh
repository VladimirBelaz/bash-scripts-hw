#!/bin/bash

mvn test -Durl=$1 -Dbrowser=$2 -Dversion=$3 -Dhub=http://localhost:4444/wd/hub
