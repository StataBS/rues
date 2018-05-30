#Append contents of each partial csv file (except the header line) to the complete csv file, then archive the partial files
tail -q -n +2 onlinedaten/roh/*_RUES_Online_S3.csv >> onlinedaten/roh/2018_bis_aktuell.csv && mv onlinedaten/roh/*_RUES_Online_S3.csv onlinedaten/roh/archiv/
#tail -q -n +2 onlinedaten/roh/*_RUES_Online_S3.csv >> 2018_bis_aktuell.csv && rm onlinedaten/roh/*_RUES_Online_S3.csv

#for file in onlinedaten/roh/*_RUES_Online_S3.csv
#do
  #cat "$file" >> Test.txt
  #tail --lines=1 $file1 # >> Test.txt
#done

#Replace tabs with semicolons
#tr '\t ' ';' < onlinedaten/roh/_2018_bis_aktuell.csv > onlinedaten/roh/2018_bis_aktuell.csv
