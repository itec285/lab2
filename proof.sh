#!/bin/bash -i	
#start in interative mode so history command will work..

spinner() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' '
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}

echo
echo CREATING A PROOF FILE IN YOUR HOME DIRECTORY...
echo

printf 'Doing important work '
spinner &

#sleep 6  # sleeping for 6 seconds is important work
apt-get install -qq -y sl > /dev/null

kill "$!" >/dev/null # kill the spinner
printf '\n'

/usr/games/sl #CHOO CHOO

cd > /dev/null
cat /etc/hostname > proof.txt
echo -------------Ifconfig------------ >>proof.txt
ifconfig >> proof.txt
echo -------------History------------- >>proof.txt
history >> proof.txt 
echo -------------Home Dir------------ >>proof.txt
ls -l >> proof.txt
echo -------------About Me------------ >>proof.txt
cat AboutMe >> proof.txt
cd > /dev/null
echo
ls -al proof.txt
echo
echo DONE DONE DONE DONE DONE.  
echo Use vi, nano, or mousepad to review your proof file. 
echo If satisfied with the file, email it to Mike: mlong@mhc.ab.ca
echo
echo
