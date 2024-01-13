#!/bin/bash
#Purpose: Used to Automate Zip file Password Cracking with John The Ripper
#Version: 1.0
#Created Date: Wed 23 Aug 2023 12:40:00 AM EDT
#Author: AJIMATI IBRAHIM
#START

if [ "$1" == "" ]
then
echo "Please Specify The Passworded zip-File To Be Cracked"
echo "Format= (bash zipcracker.sh file.zip) or (./zipcracker.sh file.zip) "

else

#Specify The Hashfile Name
echo -e "Please Provide Hashfile Name: \c"
read -r hash
echo " "

#Extract The Zip File to a Hashfile 
sudo zip2john $1 > $hash.txt 

#Crack The Hashfile With Rockyou wordlist
sudo john --wordlist='/usr/share/wordlists/rockyou.txt' $hash.txt

echo " "
echo "			Program Completed Successfully"
fi

#END
