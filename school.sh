#!/bin/bash

echo Property_Tax_Roll.csv > .gitignore

##cat Property_Tax_Roll.csv

grep 'MADISON SCHOOLS' Property_Tax_Roll.csv > MadisonData.txt

awk -F "," '{print $7}' MadisonData.txt

awk -F "," 'BEGIN{sum=0}{sum=sum+$7}END{print "The sum of total assessed value is "sum}' MadisonData.txt

awk -F "," 'BEGIN{sum=0; number=0}{sum=sum+$7; number=number+1}END{print "The average of total assessed value is "sum/number}' MadisonData.txt
