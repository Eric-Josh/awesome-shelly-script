#!/bin/bash

# Author: Joshua Ezeh
# Descripion: This is a connectivity test script to check if the ports of the below IP's are connected


echo "Started running at " `date`
printf "=================================================================\n"

echo "Testing for ESF..."
nc -zv xxx.xx.xxx.xx xxxx
printf "End of ESF testing\n\n"

echo "Finished running at " `date`
echo "================================================================="

