#!/bin/bash
file=cyberghost.csv

echo "please select a region:"
echo ""
cat $file | awk -F ";" '{print $1}' |sort -u | awk '{printf NR  "> "; print}'

read -p 'your choice : ' nchoice
choice=`cat $file | awk -F ";" '{print $1}' |sort -u | awk 'NR == '$nchoice`

echo ""
echo "select your country:"
echo ""
cat $file |grep "$choice"| awk -F ";" '{print $2 "\t" $3}'| column -s $'\t' -t | awk '{printf NR  "> "; print}'
read -p 'your choice : ' nchoice
choice=`cat $file |grep "$choice" | awk -F ";" '{print $3}' |sort -u | awk 'NR == '$nchoice`
echo you chosed this domain name: $choice

./modifier.sh ${choice::-1}