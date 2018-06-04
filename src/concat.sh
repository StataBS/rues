#Append contents of each partial csv file (except the header line) to the complete csv file, then archive the partial files
tail -q -n +2 onlinedaten/roh/*_RUES_Online_S3.csv >> onlinedaten/roh/2018_bis_aktuell.csv && mv onlinedaten/roh/*_RUES_Online_S3.csv onlinedaten/roh/archiv/

#Copy corrected data and append raw data to it
cp onlinedaten/korrigiert/online2002_2017.csv onlinedaten/online2002_aktuell.csv &&  tail -q -n +2 onlinedaten/roh/2018_bis_aktuell.csv >> onlinedaten/online2002_aktuell.csv 