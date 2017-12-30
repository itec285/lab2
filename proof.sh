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
cat /etc/hostname > proof
echo -------------Ifconfig------------ >>proof
ifconfig >> proof
echo -------------History------------- >>proof
history >> proof 
echo -------------Home Dir------------ >>proof
ls -l >> proof
echo -------------About Me------------ >>proof
cat AboutMe >> proof
cd > /dev/null
echo
ls -al proof
echo
echo DONE DONE DONE DONE DONE.  
echo Use vi, nano, or leafpad to review your proof file. 
echo If satisfied with the file, email it to Mike.
echo
echo
