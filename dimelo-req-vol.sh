#!/bin/bash

# Author: Joshua Ezeh
# Descripion: This script is to generate volume of dimelo request for the last 7days.

for i in 0 1 2 3 4 5 6 7
do
 setDate=$(date +%Y-%m-%d -d "last Thursday + $i day")
 echo "$setDate"
 grep "StatusDesc>Success</cre:StatusDesc>" dimelo.lg | grep -c -E "$setDate" dimelo.lg
 printf "\n"
done

