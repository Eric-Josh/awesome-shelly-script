echo "Started backup at" `date` "\n"

cd ~/Documents/shades/dev/

printf "Taking sql dump \n"

mysqldump -u root -p'passwd' db > obs_dump_`date +%Y-%m-%d`.sql

printf "finshed taking sql dump \n"

printf "Zipping app...\n"

# create new zip file
zip -r obs.zip obs

# remove existing backup
rm -r obs_*.zip

# create folder backup
zip obs_`date +%Y-%m-%d`.zip obs_dump_`date +%Y-%m-%d`.sql obs.zip

printf "finshed with zip app \n"
printf "moving file to media drive \n"
cp obs_`date +%Y-%m-%d`.zip /media/swifta/UUI 

# remove existing files
rm obs.zip
rm obs_dump_*.sql

echo "finished backup at" `date` "\n"


