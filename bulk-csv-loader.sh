#!/bin/bash

# Author: Joshua Ezeh
# Descripion: This script is to automate loading process of multiple csv files into mysql DB table...

# goto path where csv files resides
cd ~/Documents/naija/

x='"'
# loop through all csv file and load each of them into assigned table
for i in *.csv
do
 mysql -e "LOAD DATA LOCAL INFILE '"$i"' INTO TABLE airtime_transaction CHARACTER SET latin1 FIELDS TERMINATED BY ',' optionally enclosed by '"$x"' lines terminated by '\n' ignore 1 lines" -u root -p'password' dbname
 printf "Done: '"$i"' at $(date) ... \n\n"
done

exit
