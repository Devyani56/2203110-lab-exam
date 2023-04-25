#!bin/bash

#variable to extract first two letters
x=${$1:1:2} 
#variable to store filename
filename=$x_$2_$3.csv
#Inserting required information in the file
echo $1 > $filename
echo $2 >> $filename
echo $3 >> $filename
wc -l $1 >> $filename
head -n 1 $1 >> $filename
grep $3 $1 >> $filename
 
