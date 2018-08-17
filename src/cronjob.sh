#This is the cronjob at cyon.ch to be run at least every 15 minutes. 
#Append contents of each partial csv file (except the header line) to the complete csv file, then archive the partial files
tail -q -n +2 /home/opendata/public_html/rues/onlinedaten/roh/*_RUES_Online_S3.csv >> /home/opendata/public_html/rues/onlinedaten/roh/2018_bis_aktuell.csv && mv /home/opendata/public_html/rues/onlinedaten/roh/*_RUES_Online_S3.csv /home/opendata/public_html/rues/onlinedaten/roh/archiv/

#Copy corrected data and append raw data to it
cp /home/opendata/public_html/rues/onlinedaten/korrigiert/online-korrigiert.csv /home/opendata/public_html/rues/onlinedaten/online2002_aktuell.csv && tail -q -n +2 /home/opendata/public_html/rues/onlinedaten/roh/2018_bis_aktuell.csv >> /home/opendata/public_html/rues/onlinedaten/online2002_aktuell.csv

#import csv to database move csv files, update aggregated tables
curl https://rues.data-bs.ch/onlinedaten/raw2db.php > /dev/null 2>&1